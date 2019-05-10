module prien8_3( input [7:0] a, output reg [2:0] y);
// Procedural block
always@(a)
begin
	if(a[7]==1'b1)
		y = 3'b111;// Logic for Prioirity encoder
else	if(a[6]==1'b1)
		y = 3'b110;
else	if(a[5]==1'b1)
		y = 3'b101;
else	if(a[4]==1'b1)
		y = 3'b100;
else	if(a[3]==1'b1)
		y = 3'b011;
else	if(a[2]==1'b1)
		y = 3'b010;
else	if(a[1]==1'b1)
		y = 3'b001;
else	if(a[0]==1'b1)
		y = 3'b000;
else
		y = 3'bXXX;
end
endmodule
