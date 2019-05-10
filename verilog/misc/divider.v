module divider #(parameter WIDTH=4)(input [2*WIDTH-1:0] dividend, input [WIDTH-1:0] divisor, output reg [2*WIDTH-1:0] quo, rem);
integer flag, temp, count;
always@(dividend,divisor)
begin
	temp = dividend;
	flag = 0;
	count =0;
//	if(divisor==0)
//        	$display(" Invalid inputs");
//	else begin
	        while(flag != 1)
		begin                 
			if(temp >= divisor)
			begin
				temp = temp - divisor;
 				count = count + 1'b1;
			end			
			else 
			begin
				quo = count;
				rem = temp;
				flag = 1;
			end
		end
	//end
end
endmodule			

