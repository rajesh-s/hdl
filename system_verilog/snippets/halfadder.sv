module halfadder(input a,b, output logic s,c);
assign s = a ^ b;
assign c = a & b;
endmodule