module dff_tb;

reg clk,rst,d;
wire q;

async_dff d1(.d(d),.q(q),.rst(rst),.clk(clk));
initial
	clk = 1'b0;
always 
	#5 clk = ~clk;
initial
begin
	d = 0;	rst = 0;
#22 rst = 1'b1;
#10 d = 1;
#10 d = 0;
#84 rst = 1'b0;
#10 d = 1; 
end
endmodule

