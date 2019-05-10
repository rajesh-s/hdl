module and_sensitivity(input a,b,output reg y);

//always@(a,b) Changes in a & b affects output
//always@(a) Changes in b does not affect output
//always@(b) Changes in a does not affect output 
//always@(*) Whenver any input changes procedural statements are triggered
//always No sensitivity does not trigger/show output on forcing inputs
// For procedural without assign the statements should fall under always or initial procedural block

always@(a)
	y = a & b;
endmodule