module struct_counter_tb;

reg clk,rst;
wire [3:0] q;

struct_counter d1(.q(q),.rst(rst),.clk(clk));
initial
	clk = 1'b0;
always 
	#5 clk = ~clk;
initial
begin
		rst = 1'b1; 
#5 		rst = 1'b0;
#5		rst = 1'b1;
#60		rst = 1'b0;
//#10		rst = 1'b0;
#90 		$stop;  
end
initial	
	$monitor($time," rst = %d   q = %d",rst,q);
endmodule

