module extend (
  input  logic [31:7] inst,
  input  logic [ 1:0] immsrc,
  output logic [31:0] immext
);

  always_comb begin
    immext = {{20{inst[31]}}, inst[31:20]};
  end

endmodule