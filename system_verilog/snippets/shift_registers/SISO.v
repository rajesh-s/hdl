module SISO#(parameter n = 4) (input in,input clk, output reg out);
reg [n-2:0] temp; // Excluding the launch and capture flops
integer i;
always@(posedge clk)
begin
		temp[0] <= in;
		
		for(i =1 ; i <= (n-2) ; i=i +1 )
			temp[i]  <= temp[i-1];
		
		out <= temp[n-2];
end
endmodule
