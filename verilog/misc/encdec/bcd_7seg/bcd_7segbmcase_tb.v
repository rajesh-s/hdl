module bcd_7segbmcase_tb;
// test bench for 7 segment decoder

reg [3:0] a;
wire [6:0] y;// Data type declaration

// Module instantiation using name association

bcd_7segbmcase uut(.a(a),.y(y));

initial
begin
	$monitor($time,"ns: Input a = %b	Output = %b",a,y);// Display statement
	
	a = 4'b0000;
#5      a = 4'b0001;// Test vectors
#5      a = 4'b0010;
#5      a = 4'b0011;
#5      a = 4'b0100;
#5      a = 4'b0101;
#5      a = 4'b0110;
#5      a = 4'b0111;
#5      a = 4'b1000;
#5      a = 4'b1001;
#5      a = 4'b1111; // Invalid Input
end
endmodule
	
