module dff(input clk,d, output reg q);
always@(posedge clk)// Can be en if modelled from a SR Latch. Clock is equivalent. 
	q<=d; 
endmodule
