module fulladder(input a,b,cin, output logic s,c);
wire w1,w2,w3;
halfadder HA1(.a,.b,.s(w1),.c(w3)),// Named association alongwith implicit named association
	  HA2(.a(cin),.b(w1),.s,.c(w2)); // .a , .b can be .* since parent and child are same nets

or g1(c,w2,w3);
endmodule