module async_dff(output reg q,input clk,d,rst);

always@(posedge clk,negedge rst)// Compiler maps a asynchronous dff by inspecting the sensitivity list. negedge rst for active low, posedge rst for active high
begin
	if(~rst)
		q<=1'b0;
	else
		q<=d;
end 
endmodule
