module ring_counter #(parameter WIDTH =4) (input rst,clk, output reg [WIDTH-1:0] q);

always@(posedge clk)
begin
	if(!rst)
		q <= {1'b1,{(WIDTH-1){1'b0}}};
	else if ( q == {{(WIDTH-1){1'b0}},1'b1} ) 
		q <= {1'b1,{(WIDTH-1){1'b0}}};
	else
		q <= q>>1; 
		
end
endmodule
