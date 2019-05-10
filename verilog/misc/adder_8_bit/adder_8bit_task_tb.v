module adder_8bit_task_tb;
reg [7:0] a,b;
reg cin;
wire [7:0] sum;
wire carry;

adder_8bit_task a1(.a(a),.b(b),.cin(cin),.carry(carry),.sum(sum));
//Module instantiation linking test bench to design

initial 
begin
	test(0,0,0);// Invoking the self checking task 
	test(100,10,1);
	test(200,100,1);
	test(100,100,0);
	$stop;
end

task test// Can be compiled in a different .v file independently as well
// for reusability. But not supported in Verilog 2001
(input[7:0] ax,bx,input cx);// Demonstrating local var declaration
begin
	a = ax;// Global = Local 
	b = bx;// Linking Local Variables to Global Variables
	cin = cx;

// Implementing SELF CHECKING testbenches using TASK

	#10 if({carry,sum} != ax + bx +  cx)
// carry and sum are computed immediately as soon as a,b,c are assigned
// as this testbench has instantiated design module already
// Checking that value returned with the locally recomputed value
	begin
		$display("Result is wrong");
		$stop;
	end
end
endtask

endmodule
