`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb;

reg [3:0]x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,h_0,h_1,h_2,h_3,h_4,h_5,h_6,h_7,h_8,h_9;
reg clk=1'b0;
wire [10:0]Output;
reg reset = 1'b0;

always #1 clk = ~clk;

M1 uut(clk,reset,x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,h_0,h_1,h_2,h_3,h_4,h_5,h_6,h_7,h_8,h_9,Output);

integer testcases,expected_out;

initial begin
 $monitor($time,"x_0=%d x_1=%d x_2=%d x_3=%d x_4=%d x_5=%d x_6=%d x_7=%d x_8=%d x_9=%d h_0=%d h_1=%d h_2=%d h_3=%d h_4=%d h_5=%d h_6=%d h_7=%d h_8=%d h_9=%d Output=%d expected=%d",x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,h_0,h_1,h_2,h_3,h_4,h_5,h_6,h_7,h_8,h_9,Output,expected_out);

 $dumpfile("Q1.vcd");
 $dumpvars;
 #30 $finish;
end

initial begin
 for (testcases=0; testcases<10; testcases++) begin
 #2 x_0 = $random;
    x_1 = $random;
    x_2 = $random;
    x_3 = $random;
    x_4 = $random;
    x_5 = $random;
    x_6 = $random;
    x_7 = $random;
    x_8 = $random;
    x_9 = $random;
    h_0 = $random;
    h_1 = $random;
    h_2 = $random;
    h_3 = $random;
    h_4 = $random;
    h_5 = $random;
    h_6 = $random;
    h_7 = $random;
    h_8 = $random;
    h_9 = $random;

 expected_out = x_0*h_0 + x_1*h_1 + x_2*h_2 +x_3*h_3 + x_4*h_4 + x_5*h_5 + x_6*h_6 + x_7*h_7 + x_8*h_8 + x_9*h_9;
 end
end
endmodule
