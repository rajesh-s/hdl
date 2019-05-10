module jk_ff(input j,k,clk,rst,set,output reg q);
always@(posedge clk,negedge rst, posedge set)// Active low - negedge Active high - posedge
begin
	if(!rst)// Reset has higher priority
		q<=1'b0;
	else if(set)
		q<=1'b1;
	else
		case({j,k})// In the synth lib everyhting is made of d_ff
			2'b00: q<=q;
			2'b01: q<=1'b0;
			2'b10: q<=1'b1;
			2'b11: q<=~q;
		endcase
end
endmodule
