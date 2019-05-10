module PIPO#(parameter n=4)(input [n-1:0] d,input clk, output reg [n-1:0]q);
always@(posedge clk)
	q <= d;
endmodule 