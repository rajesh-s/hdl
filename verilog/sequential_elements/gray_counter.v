module gray_counter#(parameter n=4)(input rst,clk,output reg [n-1:0] q); 
reg [n-1:0] b,g;
always@(posedge clk)
begin
	if(!rst)
		begin
			q<=0; b<=0;
		end
	else if(b == {n{1'b1}})
		begin
			q<=0; b<=0;
		end
	else
		begin
			b<= b + 1'b1;
			{g[n-1],g[n-2:0]} <= {b[n-1], b[n-2:0] ^ b[n-1:1]};
			q <= g;
		end
end
endmodule
