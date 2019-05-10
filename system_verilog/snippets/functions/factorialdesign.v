module factorialdesign
(input [2:0] a, output [13:0]z);
//`include "factorial.v"
// Returns an integer value

//Re-entrant functions are not synthesisable.
function automatic integer factorial(input [2:0] a); // Automatic for recursive. Integer is factorial 32 bit out
begin// Recommendation is that procedural constructs are enclosed within begin and end 
	if(a==0)
		factorial = 1;
	else
		factorial = factorial(a-1) * a;// * not synthesizable but for simulation
end 
endfunction

endmodule

