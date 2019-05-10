module SIPO#(parameter n = 4) (input in,input clk, output reg[n-1:0] out); // Excluding the launch and capture flops
integer i;
always@(posedge clk)
begin
		out[0] <= in;
		
		for(i =1 ; i <= (n-1) ; i=i +1 )
			out[i]  <= out[i-1];
end
endmodule
