// a simple synchronous FIFO (first-in first-out) buffer
// Parameters:
//    LOGSIZE  (parameter) FIFO has 1<<LOGSIZE elements
//    WIDTH    (parameter) each element has WIDTH bits
// Ports:
//    clk      (input) all actions triggered on rising edge
//    reset    (input) synchronously empties fifo
//    din      (input, WIDTH bits) data to be stored
//    wr       (input) when asserted, store new data
//    full     (output) asserted when FIFO is full
//    dout     (output, WIDTH bits) data read from FIFO
//    rd       (input) when asserted, removes first element
//    empty    (output) asserted when fifo is empty
//    overflow (output) asserted when WR but no room, cleared on next RD
module fifo(clk,reset,din,wr,full,dout,rd,empty,overflow);
  parameter LOGSIZE = 2;   // default size is 4 elements
  parameter WIDTH = 4;     // default width is 4 bits

  parameter SIZE = 1 << LOGSIZE;  // compute size

  input clk,reset,rd,wr;
  input [WIDTH-1:0] din;
  output [WIDTH-1:0] dout;
  output full,empty,overflow;

  reg [WIDTH-1:0] fifo[SIZE-1:0];   // fifo data stored here
  reg overflow;			// true if WR but no room, cleared on RD
  reg [LOGSIZE-1:0] wptr,rptr;  // fifo write and read pointers

  wire [LOGSIZE-1:0] wptr_inc = wptr + 1;

  assign empty = (wptr == rptr);
  assign full = (wptr_inc == rptr);
  assign dout = fifo[rptr];

  always @ (posedge clk) begin
    if (reset) begin
      wptr <= 0;
      rptr <= 0;
      overflow <= 0;
    end
    else if (wr) begin
      // store new data into the fifo
      fifo[wptr] <= din;
      wptr <= wptr_inc;
      overflow <= overflow | (wptr_inc == rptr);
    end

    // bump read pointer if we're done with current value.
    // RD also resets the overflow indicator
    if (rd && (!empty || overflow)) begin
      rptr <= rptr + 1;
      overflow <= 0;
    end
  end
endmodule
