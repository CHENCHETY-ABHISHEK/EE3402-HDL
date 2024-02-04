module Multiplier (
    input [3:0] Mul_In1, Mul_In2,
    output [7:0] Mul_Out
);
    assign Mul_Out = Mul_In1 * Mul_In2;
endmodule

module Adder (
    input [10:0] Add_In1, Add_In2,
    output [10:0] Add_Out
);
    assign Add_Out = Add_In1 + Add_In2;
endmodule

module In_Mux (
    input [3:0] In_0, In_1, In_2, In_3, In_4,
    input [2:0] sel,
    output reg [3:0] Out
);
    always @*
    case (sel)
        3'b000: Out <= In_0;
        3'b001: Out <= In_1;
        3'b010: Out <= In_2;
        3'b011: Out <= In_3;
        3'b100: Out <= In_4;
        default: Out <= 0;
    endcase;
endmodule

module OutMux (
    input [10:0] In_0, In_1, In_2, In_3, In_4,
    input [2:0] sel,
    output reg [10:0] Out
);
    always @*
    case (sel)
        3'b000: Out = In_0;
        3'b001: Out = In_1;
        3'b010: Out = In_2;
        3'b011: Out = In_3;
        3'b100: Out = In_4;
        default: Out = 11'b0;
    endcase;
endmodule

module Q3 (
    input clk,
    input [3:0] x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9,
    output reg [10:0] out
);
    reg [3:0] counter = 4'b0000;
    reg [2:0] sel_i, sel_j;
    reg [10:0] a0, a1, a2, a3, a4, a5, a6, a7;

    wire [3:0] MulIn1, MulIn2, MulIn3, MulIn4;
    wire [7:0] MulOut1, MulOut2;
    wire [10:0] AddIn1, AddIn2, AddOut;

    In_Mux I1(x_0, x_2, x_4, x_6, x_8, sel_i, MulIn1);
    In_Mux I2(h_0, h_2, h_4, h_6, h_8, sel_i, MulIn2);

    In_Mux I3(x_1, x_3, x_5, x_7, x_9, sel_i, MulIn3);
    In_Mux I4(h_1, h_3, h_5, h_7, h_9, sel_i, MulIn4);

    Multiplier M1(MulIn1, MulIn2, MulOut1);
    Multiplier M2(MulIn3, MulIn4, MulOut2);

    OutMux O1({3'b000,MulOut1}, a0, a1, a2, a3, sel_j, AddIn1);
    OutMux O2({3'b000,MulOut2}, a4, a5, a6, a7, sel_j, AddIn2);

    Adder A1(AddIn1, AddIn2, AddOut);

    always @(posedge clk) begin
        counter <= (counter == 4'b1000) ? 4'b0000 : counter + 1;
        sel_i <= (counter == 4'b1000) ? 3'b000 : sel_i + 1;
        sel_j <= (counter < 4'b0100 || counter == 4'b1000) ? 3'b000 : sel_j + 1;
    end

    always @(x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9) begin
        counter<=4'b0000;
        sel_i <= 3'b000;
        sel_j <= 3'b000;
        out <= 0;
    end

    always @* begin
        case (counter)
            4'd0: a0 <= AddOut;
            4'd1: a1 <= AddOut;
            4'd2: a2 <= AddOut;
            4'd3: a3 <= AddOut;
            4'd4: a4 <= AddOut;
            4'd5: a5 <= AddOut;
            4'd6: a6 <= AddOut;
            4'd7: a7 <= AddOut;
            4'd8: out <= AddOut;
        endcase
    end
endmodule
