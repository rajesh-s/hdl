function [4:0] sum( input [3:0] a,b); // 5 bit input to concatenate carry with the sum while returning as functions in verilog do not permit multiple returns
sum = a + b; // Directly use blocking without initial/always. An exceptions applicable to function and not other .v
endfunction
