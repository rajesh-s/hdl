module d_latch(output q,qbar,input d,en);

gated_sr_latch s1(q,qbar,d,~d,en);

endmodule
