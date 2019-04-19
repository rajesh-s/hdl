`timescale 1 ns/1 ps
module d_ff (input logic clk, reset, d, output logic q, q2);
always @(posedge clk)
begin
  if(reset) q <= 1'b0;
  else q <= d;
end
always @(posedge clk)
begin
  if(reset) q2 <= 1'b0;
  else q2 <= q;
end
endmodule
