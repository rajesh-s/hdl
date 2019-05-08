module test_wildcard_equality;
logic [3:0] B = 4'bxx11;
logic [3:0] A = 4'b1111;
initial
begin

$display("Works %0b",(A ==? B));
end
endmodule
