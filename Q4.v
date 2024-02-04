`include"memory.v"
module Q4(out,clk,x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9); 
output [10:0]out; 
input [3:0] x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9; 
wire [7:0] m_0,m_1,m_2,m_3,m_4,m_5,m_6,m_7,m_8,m_9; 
input clk; 
 
memory_h0 hh0(m_0,x_0,clk); 
memory_h1 hh1(m_1,x_1,clk); 
memory_h2 hh2(m_2,x_2,clk); 
memory_h3 hh3(m_3,x_3,clk); 
memory_h4 hh4(m_4,x_4,clk); 
memory_h5 hh5(m_5,x_5,clk); 
memory_h6 hh6(m_6,x_6,clk); 
memory_h7 hh7(m_7,x_7,clk); 
memory_h8 hh8(m_8,x_8,clk); 
memory_h9 hh9(m_9,x_9,clk); 
 
adder add(out,m_0,m_1,m_2,m_3,m_4,m_5,m_6,m_7,m_8,m_9); 
endmodule
