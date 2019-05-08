module test_unique
(input [1:0] s,
input a,b,c,d,
output reg y);

always@(a,b,c,d,s)// Synthesis pragmas have been replaced by unique keyword in SV
begin
	unique case(s)// Throws warning against latch inferences in simulator , formal as well as synthesis tool
		2'b00: y = a;
		2'b01: y = b;
		2'b10: y = c;
		endcase
end
endmodule
