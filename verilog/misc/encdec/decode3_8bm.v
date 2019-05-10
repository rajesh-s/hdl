module decode3_8bm(input [2:0] a,input en, output reg [7:0]y);

always@(a,en)
begin
	if(a == 3'b000)
		y = 8'b1;
		else if( a == 3'b001)
			y = 8'b10;
			else if( a == 3'b010)
				y = 8'b100;
				else if( a == 3'b011)
					y = 8'b1000;
					else if( a == 3'b100)
						y = 8'b10000;
						else if( a == 3'b101)
							y = 8'b100000;
							else if( a == 3'b110)
								y = 8'b1000000;
								else if( a == 3'b111)
									y = 8'b10000000;
									else 
										y = 8'b0;
end 
endmodule
