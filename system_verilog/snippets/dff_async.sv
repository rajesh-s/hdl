module dff_async(input d,clk,rst, output reg q);
always_ff@(posedge clk,negedge rst)// inferred f/f
begin
	if(!rst)
		q<= 1'b0;
	else
		q<= d;
end
endmodule
 