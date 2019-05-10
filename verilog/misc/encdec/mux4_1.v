module mux4_1 (output reg y, input [3:0] a, input [1:0] sel);

always@(sel,a)
begin
	case(sel)
	2'b00: y = a[0];
	2'b01: y = a[1];// MUX logic with 2 select lines
	2'b10: y = a[2];
	2'b11: y = a[3];
	default: y = 1'bX;
	endcase
end 
endmodule
