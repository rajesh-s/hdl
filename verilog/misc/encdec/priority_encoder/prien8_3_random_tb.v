module prien8_3_random_tb;// priority encoder test bench
reg [7:0] a;// Data type declaration
wire [2:0] y;
//Instantiation of checking module
prien8_3 uut(.a(a),.y(y));
initial
begin
	$monitor($time,"ns: a = %b	y = %b",a,y);// Display statements
repeat(15)
begin
	a = $random();// Test vectors. Random doesn't generate X in the test vectors
#5;
end
end
endmodule
