module PISO#(parameter n=4)(input [n-1:0] in,input clk,load,output reg out);
reg [n-1:0] temp;
always@(posedge clk)
begin
if(load)
	temp <=in;
else
	{temp,out} <= {1'b0,temp[n-2:1],temp[0]};

end
initial
$monitor("%b %b",temp,out);
endmodule
