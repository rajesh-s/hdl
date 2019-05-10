//2:1 mux using BM
// Verilog - 2001 Format 
module mux2_1BM ( output reg y, input a,b,s);
// LHS needs to be reg ( capacitor memory element in BM
//Procedural block. MUX works on changes in value on inputs as well as select lines
always @(a,b,s)// Use commas in Verilog 2001
// Without sensitivity list it is mapped as mux but does not behave like one. 
//Simulation synthesis mismatch
begin
	if(s)
 		y = b;
	else 
		y = a; // Executed for s = X,0,Z. MUX Behaviour
//Failing to specify predicted output for different input combinations can lead to inferred latches
end
endmodule
	
