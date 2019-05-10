module rom_test( input [1:0] addr, output [7:0] dout);
// Modelling ROM

reg [7:0] mem [3:0];
assign dout = mem[addr]; // Asynchronous ROM

/* Use always@(posedge clk)
	dout<= mem[addr];
For synchronous model     */

initial
$readmemb("mem1.txt",mem,0,3);// $readmemb ( <File_name> , <Mem_var>, <start_loc> , <end_loc>); h for hex [3,0] will map 3 to addr 00
endmodule
