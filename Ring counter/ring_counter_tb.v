`timescale 1ns/1ps

module ring_counter_tb;


reg clk;
reg reset;

wire [3:0] count;


// Module Instance

ring_counter uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);


// Clock Generation

always #5 clk = ~clk;


initial
begin

    $dumpfile("ring_counter.vcd");
    $dumpvars(0, ring_counter_tb);


    clk = 0;
    reset = 1;


    #10;

    reset = 0;


    // Run counter

    #80;


    $finish;

end



initial
begin

    $monitor("Time=%0t Count=%b",
              $time,count);

end


endmodule