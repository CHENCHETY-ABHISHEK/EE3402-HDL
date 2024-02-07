 module hw_h0(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {4'b0000, ip_x}; //h0 = 1
 end
 endmodule

 module hw_h1(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {3'b000, ip_x, 1'b0}; //h1 = 2
 end
 endmodule

 module hw_h2(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
    op_y <= {3'b000, ip_x, 1'b0} + {4'b0000, ip_x}; //h2 = 3
 end
 endmodule

 module hw_h3(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {2'b00, ip_x, 2'b00}; //h3 = 4
 end
 endmodule

 module hw_h4(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {2'b00, ip_x, 2'b00} + {4'b0000, ip_x}; //h4 = 5
 end
 endmodule

 module hw_h5(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {2'b00, ip_x, 2'b00} + {3'b000, ip_x, 1'b0}; //h5 = 6
 end
 endmodule

 module hw_h6(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {2'b00, ip_x, 2'b00} + {3'b000, ip_x, 1'b0} +
 {4'b0000, ip_x}; //h6 = 7
 end
 endmodule

 module hw_h7(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {1'b0, ip_x, 3'b000}; //h7 = 8
 end
 endmodule

 module hw_h8(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= {1'b0, ip_x, 3'b000} + {4'b0000, ip_x}; //h8 = 9
 end
 endmodule

 module hw_h9(
 input wire [3:0] ip_x,
 output reg [7:0] op_y,
 input wire clk
 );

 always @(posedge clk) begin
 op_y <= ({1'b0, ip_x, 3'b000} + {3'b000, ip_x, 1'b0}) ; //h9 = 10
 end
 endmodule