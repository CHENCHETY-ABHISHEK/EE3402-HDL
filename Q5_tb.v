`timescale 1ns / 1ns
`include "Q5.v"
module Q5_tb;

    reg [3:0] x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9;
    wire [10:0] out;
    reg clock =1'b0;
    reg reset = 1'b0;    
    always #1 clock = ~clock;
    
    Q5 uut(x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,out,clock,reset);

    initial
    begin
       x_0 <= 4'b0001;
        x_1 <= 4'b0010;
        x_2 <= 4'b0011;
        x_3 <= 4'b0100;
        x_4 <= 4'b0101;
        x_5 <= 4'b0110;
        x_6 <= 4'b0111;
        x_7 <= 4'b1000;
        x_8 <= 4'b1001;
        x_9 <= 4'b1010;

    end 
    initial begin
        $dumpfile("Q5.vcd"); 
        $dumpvars; 
    end
    initial begin
        #10 $finish;  
    end


endmodule