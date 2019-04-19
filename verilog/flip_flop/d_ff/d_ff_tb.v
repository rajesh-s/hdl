`timescale 1ns/1ps
module  d_ff_tb ();

reg reset;
reg  d;
wire q,q2;

reg clk;

always #4 clk <= ~clk;

initial
    begin
        clk <= 0;
        d <= 0;
        reset <= 1;
        # 4;
        d <= 1;
        # 4;
        d <= 0;
        # 4;
        reset <= 0;
        # 8;
        d <= 1;
        # 4; 
        d <= 0;
        # 12;
        d <= 1;
        # 8;
        d <= 0;
        # 100;
        $finish;
    end

initial
begin
$shm_open("waves.shm");
$shm_probe(d_ff_tb,"AS");
end

//initial
//begin
//$monitor ("clk <= %b in_b <= %x in_c <= %d", clk, in_b, in_c ) ;
//end

d_ff d_ff (
     .clk(clk),
     .reset(reset),
     .q(q),
     .d(d));

endmodule

