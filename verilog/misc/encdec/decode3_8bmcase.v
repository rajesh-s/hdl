module decode3_8bmcase(input [2:0] a,input en, output reg [7:0] y);

always@(a,en)
begin
	case({en,a})
	4'b1000: y = 8'b1;
	4'b1001: y = 8'b10;
	4'b1010: y = 8'b100;
	4'b1011: y = 8'b1000;
	4'b1100: y = 8'b10000;
	4'b1101: y = 8'b100000;
	4'b1110: y = 8'b1000000;
	4'b1111: y = 8'b10000000;
	default: y = 8'b0;
	endcase
end 
endmodule
