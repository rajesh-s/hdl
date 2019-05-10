module latch(input d,en,output reg q);
always@(d,en)// Level triggered

	if(en==1)
		q<=d;
//	else q<=0; omitting this will infer latch which is intended to
//	latch/hold the previous value. Else statement is not required under
//	sequential logic design.

endmodule
