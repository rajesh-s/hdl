module ram_design1( input clk, en, we, input [3:0] addr, input [7:0] din, output reg [7:0] dout); // Addr length is inferred from no. of bits used to represent 
// depth or number of locations. Data in is inferred from the word length or width
reg [7:0] mem [15:0]; // Mem modelling in verilog

always@(posedge clk)
begin
	if(en)
	begin
		if(we)
			mem[addr] <= din;
		dout <= mem[addr];
end 
endmodule // Modelling a block ram with synchronous read
