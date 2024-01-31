module M1(clock, reset, x_0, x_1, x_2, x_3, x_4,x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4,h_5, h_6, h_7, h_8, h_9, out);

output reg [10:0] out ;
input clock ;
input reset;
input [3:0] x_0, x_1, x_2, x_3, x_4,x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4,h_5, h_6, h_7, h_8, h_9 ;

always @(posedge clock, reset) begin
    if(reset)
        out <= 0 ;
    else
        out <= x_0*h_0 + x_1*h_1 + x_2*h_2 + x_3*h_3 + x_4*h_4 + x_5*h_5 + x_6*h_6 + x_7*h_7 + x_8*h_8 + x_9*h_9 ;
end
endmodule