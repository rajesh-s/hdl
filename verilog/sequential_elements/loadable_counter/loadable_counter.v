module loadable_counter #(parameter n =4) (input clk,rst,updown,ld,input [n-1:0] d,output reg [n-1:0]q);

always@(posedge clk)
begin
	if(!rst)
		q <= {n{1'b0}};
	else if (ld)
		q <= d;	// Only this operation takes place once it enters the loading part. During the next clock edge the counter gets incremented
	else 
	begin
		if(updown)
			q <= q + 1'b1;
		else
			q <= q - 1'b1;
	end
end
endmodule 
