module regfile (
  input  logic        clk,
  input  logic        write_enable,
  input  logic [ 4:0] write_address,
  input  logic [31:0] write_data,
  input  logic [ 4:0] read_address1,
  input  logic [ 4:0] read_address2,
  output logic [31:0] read_data1,
  output logic [31:0] read_data2
);
  
  logic [31:0] registers [31:0];

  always_ff @( posedge clk ) begin
    if (write_enable) begin
      registers[write_address] = write_data;
    end
  end

  assign read_data1 = (read_address1 != '0) ? registers[read_address1] : '0; 
  assign read_data2 = (read_address2 != '0) ? registers[read_address2] : '0; 

endmodule