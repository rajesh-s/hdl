module gated_sr_latch(output q,qbar,input s,r,en);
wire w1,w2;

nand n1(w1,s,en);
nand n2(w2,r,en);

sr_latch s1(q,qbar,w1,w2);

endmodule
