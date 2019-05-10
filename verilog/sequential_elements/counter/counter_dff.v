module counter_dff(output [3:0] q,input [3:0]d, input en);

d_ff d1(q[0],qbar,qbar,en);
d_ff d2(q[1],,d[1],en);
d_ff d3(q[2],,d[2],en);
d_ff d4(q[3],,d[3],en);

endmodule
