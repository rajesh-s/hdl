module prien_casex #(parameter n = 3)(input [2**N-1:0] in, output [n-1:0] out);
always@(in)
	casex(in)
	8'b00000001: 3'b001;
	8'b0000001x: 3'b010;
	8'b000001xx: 3'b011;
	8'b00001xxx: 3'b100;
	8'b0001xxxx: 3'b101;
	8'b001xxxxx: 3'b110;
	8'b1xxxxxxx: 3'b111;
	endcase
endmodule
