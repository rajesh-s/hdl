module mux4_1_design(input a,b,c,d, input [1:0] s, output e);
`include "mux4_1.v"
assign e = mux(a,b,c,d,s);
endmodule
