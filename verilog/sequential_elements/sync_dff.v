module sync_dff(output reg q,input clk,d,rst);

always@(posedge clk)
begin
	if(rst)// Always high reset unlike asynchronous resets
		q<=1'b0;
	else
		q<=d;
end
endmodule
