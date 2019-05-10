module prien8_3_tb;// priority encoder test bench
reg [7:0] a;// Data type declaration
wire [2:0] y;
//Instantiation of checking module
prien8_3 uut(.a(a),.y(y));
initial
begin
	$monitor($time,"ns: a = %b	y = %b",a,y);// Display statements
	
	a = 8'b00000001;// Test vectors
#5      a = 8'b00000010;
#5      a = 8'b00000100;
#5      a = 8'b00001000;
#5      a = 8'b00010000;
#5      a = 8'b00100000;
#5      a = 8'b01000000;
#5      a = 8'b10000000;
#5      a = 8'b11000010;
#5      a = 8'b11111111;
end
endmodule
