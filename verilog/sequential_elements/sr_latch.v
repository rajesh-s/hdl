module sr_latch(output q,qbar,input s,r);

nand n1(q,s,qbar);
nand n2(qbar,r,q);

endmodule
