module loadable_counter_tb;

reg clk,rst,ld,updown;
reg [3:0] d;

wire [3:0] q;

loadable_counter d1(.q(q),.rst(rst),.clk(clk),.updown(updown),.ld(ld),.d(d));
initial
	clk = 1'b0;
always 
	#2 clk = ~clk;
initial
begin
		rst = 1'b0; 
#10 		rst = 1'b1;
  		ld = 1'b1; d = 4'b1001;
		updown = 1'b1;
#5		ld = 1'b0;
#40		updown = 1'b0;
//#10		rst = 1'b0;
#300		$stop;  
end
initial	
	$monitor($time," rst = %d   q = %d",rst,q);
endmodule
