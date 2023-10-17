module data_memory (
  input  logic        clk,
  input  logic        write_enable,
  input  logic [31:0] address,
  input  logic [31:0] write_data,
  output logic [31:0] read_data
);
  // TODO: set nice memory size!!
  logic [31:0] ram [31:0];

  always_ff @( posedge clk ) begin
    if (write_enable) begin
      ram[address] = write_data;
    end
  end

  assign read_data = ram[address];

endmodule