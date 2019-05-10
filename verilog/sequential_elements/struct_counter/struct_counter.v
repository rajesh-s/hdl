module struct_counter(output [3:0] q, input clk,rst);
// dff ( out,clk,d,rst
async_dff d1(q[0],clk,~q[0],rst);
async_dff d2(q[1],~q[0],~q[1],rst);
async_dff d3(q[2],~q[1],~q[2],rst);
async_dff d4(q[3],~q[2],~q[3],rst);

endmodule
