module adder_8bit_task( input [7:0] a,b,input cin, output reg [7:0] sum, output reg carry);
always@(*)
begin 
	task_adder(a,b,cin,sum,carry);
end

//Task Definition
task task_adder(input [7:0] a,b,input cin, output reg [7:0] sum, output reg carry);
// Purely synthesizable task
{carry,sum}= a + b + cin;
endtask
endmodule
