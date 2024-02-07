`include "hardware.v"
module Q5(
 input wire [3:0] x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,
 output reg [10:0] y,
 input wire clk,reset

 );

 wire [7:0] tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9;

 hw_h0 h0 (.ip_x(x_0), .op_y(tmp0), .clk(clk));
 hw_h1 h1 (.ip_x(x_1), .op_y(tmp1), .clk(clk));
 hw_h2 h2 (.ip_x(x_2), .op_y(tmp2), .clk(clk));
 hw_h3 h3 (.ip_x(x_3), .op_y(tmp3), .clk(clk));
 hw_h4 h4 (.ip_x(x_4), .op_y(tmp4), .clk(clk));
 hw_h5 h5 (.ip_x(x_5), .op_y(tmp5), .clk(clk));
 hw_h6 h6 (.ip_x(x_6), .op_y(tmp6), .clk(clk));
 hw_h7 h7 (.ip_x(x_7), .op_y(tmp7), .clk(clk));
 hw_h8 h8 (.ip_x(x_8), .op_y(tmp8), .clk(clk));
 hw_h9 h9 (.ip_x(x_9), .op_y(tmp9), .clk(clk));

 always @(posedge clk or posedge reset) begin
 if (reset == 1) begin
 y <= 0;
 end

 else begin
 y <= (tmp0 + tmp1 + tmp2+ tmp3 + tmp4 + tmp5 + tmp6
 + tmp7 + tmp8 + tmp9);
 end
 end
 endmodule