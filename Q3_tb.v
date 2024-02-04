`timescale 1ns/1ns
`include "Q3.v"

module Q3_tb;

  // Declaring Port parameters for testbench
  reg [3:0] x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9;
  reg clk = 1'b0;
  wire [10:0] Output;

  // Clock pulse generation
  always #1 clk = ~clk;

  // Instantiate the DUT (Design Under Test)
  Q3 uut (
    .out(Output),
    .clk(clk),
    .x_0(x_0), .x_1(x_1), .x_2(x_2), .x_3(x_3), .x_4(x_4), .x_5(x_5), .x_6(x_6), .x_7(x_7), .x_8(x_8), .x_9(x_9),
    .h_0(h_0), .h_1(h_1), .h_2(h_2), .h_3(h_3), .h_4(h_4), .h_5(h_5), .h_6(h_6), .h_7(h_7), .h_8(h_8), .h_9(h_9)
  );

  // Declaring variables for testbench
  integer testcases, expected_out;

  // Monitoring the input values & Output
  initial begin
    $monitor($time, "x_0=%d x_1=%d x_2=%d x_3=%d x_4=%d x_5=%d x_6=%d x_7=%d x_8=%d x_9=%d h_0=%d h_1=%d h_2=%d h_3=%d h_4=%d h_5=%d h_6=%d h_7=%d h_8=%d h_9=%d Output=%d expected=%d",x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9, Output, expected_out);

    // Dumping waveform to VCD file
    $dumpfile("Q3.vcd");
    $dumpvars;

    // Finish simulation after 1100 time units
    #200 $finish;
  end

  // Running testcases
  initial begin
    // Initialize expected_out
    expected_out = x_0 * h_0 + x_1 * h_1 + x_2 * h_2 + x_3 * h_3 + x_4 * h_4 + x_5 * h_5 + x_6 * h_6 + x_7 * h_7 + x_8 * h_8 + x_9 * h_9;

    // Loop for 10 testcases
    for (testcases = 0; testcases < 10; testcases++) begin
      // Assign random values to inputs
      x_0 = $random; x_1 = $random; x_2 = $random; x_3 = $random; x_4 = $random;
      x_5 = $random; x_6 = $random; x_7 = $random; x_8 = $random; x_9 = $random;
      h_0 = $random; h_1 = $random; h_2 = $random; h_3 = $random; h_4 = $random;
      h_5 = $random; h_6 = $random; h_7 = $random; h_8 = $random; h_9 = $random;

      // Calculate expected_out for comparison
      expected_out = x_0 * h_0 + x_1 * h_1 + x_2 * h_2 + x_3 * h_3 + x_4 * h_4 + x_5 * h_5 + x_6 * h_6 + x_7 * h_7 + x_8 * h_8 + x_9 * h_9;
      #20;
    end
  end
endmodule
