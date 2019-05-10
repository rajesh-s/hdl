module ff_count(input clk,rst,e,output reg a);
reg b , c, d;
always@(posedge clk)
begin 
	if(!rst)
	begin
		a = 0; b = 0; c = 0; d = 0;
		// a <= 0; b <= 0; c <=0; d<=0;
	end
	else
	begin
		b=e;c=b;d=c;a=d;// Shift register logic
		// a=d;d=c;c=b;b=e;
		// b<=e;c<=b;d<=c;a<=d
		// a<=d;d<=c;c<=b;b<=e
	end
end
endmodule
