module ff_count_tb;

	reg clk,rst,e;
	wire a;

	ff_count uut(.clk(clk),.rst(rst),.a(a),.e(e));
	initial
		clk = 1'b0;
	always 
	#5	clk = ~clk;
initial
begin
	rst = 1'b1 ; e = 1'b1;
#30	rst = 1'b0 ; e = 1'b1;
#30 	rst = 1'b1 ; e = 1'b0;
end
endmodule 

