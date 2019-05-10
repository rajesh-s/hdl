module rom_syncread(input clk, input [1:0] addr, output reg [7:0] dout);// ROM with sync read is preferred over async read
reg [7:0] mem [3:0];

always@(posedge clk)
begin// Writing data. This is through an  LUT to model data already written concept
	mem['b00] <= 8'b0010_1111;
	mem['b01] <= 8'b0010_0000;
	mem['b10] <= 8'b1110_1111;
	mem['b11] <= 8'b1111_1111;
end

always@(posedge clk)
	dout <= mem[addr];
endmodule
