// Use `include "mux4_1.v" to include this function
function mux4_1(input a,b,c,d, input [1:0] s);
case (s)
	2'b00 : mux = a;
	2'b01 : mux = b;
	2'b10 : mux = c;
	2'b11 : mux = d;
	default: mux = 1'bx;
endcase
endfunction
