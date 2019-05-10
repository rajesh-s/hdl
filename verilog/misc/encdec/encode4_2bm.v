module encode4_2bm(input [3:0] a, output reg [1:0] y);

always@(a)
begin
	if(a == 4'b0001)
		y = 2'b00;
	else if(a == 4'b0010)
		y = 2'b01;
	else if(a == 4'b0100)
		y = 2'b10;
	else if(a == 4'b1000)
		y = 2'b11;
	else 
		y = 2'b00;
end 
endmodule
