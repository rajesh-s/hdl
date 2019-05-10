module nbit_decode #(parameter WIDTH = 4) (input [WIDTH-1:0] a,input en, output [2**WIDTH-1:0] y);
assign y = en ? (1<<a) : 0;
endmodule
