module signed_addition;
reg signed [3:0] a,b,sum;
reg carry;

initial
begin
	a = 4'b0100;
	b = 4'b0100; 
	$display("a = %b b = %b",a,b);
	sum = a + b;
	$display("sum = %d",sum);
end
endmodule
	