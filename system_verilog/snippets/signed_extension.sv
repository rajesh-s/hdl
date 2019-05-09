module signed_extension;

/*logic  signed [3:0] a = 4'b1111;
logic [3:0] b = 4'b1111;
initial
$display("%d %d",a,b); 
endmodule */

function logic signed [31:0] sxt(input logic signed [15:0] a);
{sxt[31:16],sxt[15:0]} = {{16{1'b0}},a[15:0]};
endfunction
initial
begin
$display("%b",sxt(16'b1111111111111111));
end
endmodule
