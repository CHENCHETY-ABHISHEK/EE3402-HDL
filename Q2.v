module M2(clock, reset, x_0, x_1, x_2, x_3, x_4,x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4,h_5, h_6, h_7, h_8, h_9, out);

output reg [10:0] out ;
input clock ;
reg [3:0] counter = 0;

input reset;
input [3:0] x_0, x_1, x_2, x_3, x_4,x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4,h_5, h_6, h_7, h_8, h_9 ;

reg [7:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9;  

always @(posedge clock,reset) begin  
        if(reset) begin
            out<=0;
        end  
        else begin
            case (counter[0]&1)
                1'b1: begin
                 m0<=x_0*h_0;         
                 m1<=x_1*h_1;         
                 m2<=x_2*h_2;         
                 m3<=x_3*h_3;         
                 m4<=x_4*h_4;         
                 m5<=x_5*h_5;         
                 m6<=x_6*h_6;         
                 m7<=x_7*h_7;         
                 m8<=x_8*h_8;         
                 m9<=x_9*h_9;
                end
                1'b0: out <= m0+m1+m2+m3+m4+m5+m6+m7+m8+m9;
                default: out <= 0; 
            endcase
            counter <= counter+1;
        end
end
endmodule