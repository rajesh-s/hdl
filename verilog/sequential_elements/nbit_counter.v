module nbit_counter #(parameter n=4) (input clk,rst,updown,output reg [n-1:0] q);
always@(posedge clk)
begin
	if(~rst)
		q<= {n{1'b0}}; // Assigning n bits to zero
	else if(updown)
		q<= q+1;
	else
		q<=q-1;
end
endmodule
