module ring_counter_tb;

reg clk,rst;
wire [3:0] q;

ring_counter d1(.q(q),.rst(rst),.clk(clk));
initial
	clk = 1'b0;
always 
	#5 clk = ~clk;
initial
begin
		rst = 1'b0; 
#10 		rst = 1'b1;
//#10		rst = 1'b0;
#100		$stop;  
end
initial	
	$monitor($time," rst = %d   q = %b",rst,q);
endmodule
