module d_ff(output q,qbar,input d,en);

wire w1,w2;

d_latch d1(w1,w2,d,en);
d_latch d2(q,qbar,w1,~en);

endmodule
