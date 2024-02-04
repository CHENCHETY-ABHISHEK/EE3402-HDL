module memory_h0(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h0 = 1; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h0 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h1(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h1 = 2; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h1 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h2(out,in,clk); 
input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h2 = 3; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h2 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h3(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h3 = 4; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h3 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h4(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h4 = 5; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h4 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h5(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h5 = 6; 
  reg [7:0] memory[0:((2**4)-1)]; 
initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h5 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h6(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h6 = 7; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h6 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h7(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h7 = 8; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h7 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule
module memory_h8(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h8 = 9; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h8 * j; 
    end 
  end 
  always @(posedge clk) begin 

    out <= memory[in]; 
  end
endmodule
module memory_h9(out,in,clk); 
  input [3:0] in; 
  input clk; 
  output reg [7:0] out; 
  integer j; 
  parameter h9 = 10; 
  reg [7:0] memory[0:((2**4)-1)]; 
  initial begin 
    for (j = 0; j < ((2 ** 4)); j++) begin 
      memory[j] = h9 * j; 
    end 
  end 
  always @(posedge clk) begin 
    out <= memory[in]; 
  end
endmodule 
 
module adder(out,m0,m1,m2,m3,m4,m5,m6,m7,m8,m9); 
  input [7:0] m0, m1, m2, m3, m4, m5, m6, m7, m8, m9; 
  output [10:0] out; 
  assign out = m0 + m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9; 
endmodule