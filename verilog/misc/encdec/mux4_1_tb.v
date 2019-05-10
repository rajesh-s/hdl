module mux4_1_tb;// Mux test bench

reg [1:0] sel;
reg [3:0] a;
wire y;// Data type declaration

mux4_1 uut(.sel(sel),.a(a),.y(y));// Module instantiation using name association

initial 
begin
	sel = 2'b00; a = 4'b1010;// Test vectors
#5	sel = 2'b00; a = 4'b1111;
#5 	sel = 2'b00; a = 4'b0001;
#5 	sel = 2'b01; a = 4'b0010;
$monitor($time,"ns: Input A = %b, Select line = %b, Output = %b",a,sel,y);// Display statement. 
// Monitor has positional dependance. At this position it gives a  3 line output. First line indicating Current value and next changes.
#5	sel = 2'b10; a = 4'b0100;
#5	sel = 2'b11; a = 4'b1000;
end
endmodule
 
