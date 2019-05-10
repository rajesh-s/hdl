module bcd_7segbm(input [3:0] a,  output reg [6:0] y);

always@(a)
begin 
	if(a==4'b0000)
		y = 7'b1111110;
	else if(a==4'b0001)
		y = 7'b0110000;
	else if(a==4'b0010)
		y = 7'b1101101;
	else if(a==4'b0011)
		y = 7'b1111001;
	else if(a==4'b0100)
		y = 7'b0110011;
	else if(a==4'b0101)
		y = 7'b1011011;
	else if(a==4'b0110)
		y = 7'b1011111;
	else if(a==4'b0111)
		y = 7'b1110000;
	else if(a==4'b1000)
		y = 7'b1111111;
	else if(a==4'b1001)
		y = 7'b1111011;
	else
		y = 7'b0;
end 
endmodule
