`timescale 1ns / 1ns
`include "Q4.v"
module Q4_tb; 
  reg [3:0] x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9; 
  reg clk; 
  wire [10:0] Output; 
  Q4 uut (Output,clk,x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9); 
  integer i, j, expected; 
  initial begin 
    $monitor($time, "x0=%d x1=%d x2=%d x3=%d x4=%d x5=%d x6=%d x7=%d x8=%d x9=%d Output=%d expected=%d", x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, Output, expected); 
  end 
  initial begin 
    clk = 1'b0; 
    forever #5 clk = ~clk; 
  end 
  initial begin 
    for (i = 0; i < 19; i++) begin 
      #10 x_0 = $random; 
      x_1 = $random; 
      x_2 = $random; 
      x_3 = $random; 
      x_4 = $random; 
      x_5 = $random; 
      x_6 = $random; 
      x_7 = $random; 
      x_8 = $random; 
      x_9 = $random; 
      expected=x_0*(1)+x_1*(2)+x_2*(3)+x_3*(4)+x_4*(5)+x_5*(6)+x_6*(7)+x_7*(8)+x_8*(9)+x_9*(10); 
    end 
  end 
  initial begin 
    $dumpfile("Q4.vcd"); 
    $dumpvars; 
  end 
  initial begin 
    #200 $finish; 
  end
endmodule