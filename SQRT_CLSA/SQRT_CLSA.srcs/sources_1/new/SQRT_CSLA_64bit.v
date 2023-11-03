`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2023 09:48:59 AM
// Design Name: 
// Module Name: SQRT_CSLA_64bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SQRT_CSLA_64bit(
    input [63:0] A,
    input [63:0] B,
    input Cin,
    output Cout,
    output [63:0] Sum
    );
    
    // intermediate to connect each other
    wire [7:0] Carry;
    
    // structure of SQRT-CSLA
    Ripple_Carry_Adder_4bit RCA_4bit_0_3(A[3:0],B[3:0],Cin,Carry[0],Sum[3:0]);                          // 4-bit
    Carry_Select_Adder_4bit SQRT_CSLA_4bit_4_7(A[7:4],B[7:4],Carry[0],Carry[1],Sum[7:4]);               // 4-bit
    Carry_Select_Adder_5bit SQRT_CSLA_4bit_8_12(A[12:8],B[12:8],Carry[1],Carry[2],Sum[12:8]);           // 5-bit
    Carry_Select_Adder_6bit SQRT_CSLA_4bit_13_18(A[18:13],B[18:13],Carry[2],Carry[3],Sum[18:13]);       // 6-bit
    Carry_Select_Adder_7bit SQRT_CSLA_4bit_19_25(A[25:19],B[25:19],Carry[3],Carry[4],Sum[25:19]);       // 7-bit
    Carry_Select_Adder_8bit SQRT_CSLA_4bit_26_33(A[33:26],B[33:26],Carry[4],Carry[5],Sum[33:26]);       // 8-bit
    Carry_Select_Adder_9bit SQRT_CSLA_4bit_34_42(A[42:34],B[42:34],Carry[5],Carry[6],Sum[42:34]);       // 9-bit
    Carry_Select_Adder_10bit SQRT_CSLA_4bit_43_52(A[52:43],B[52:43],Carry[6],Carry[7],Sum[52:43]);      // 10-bit
    Carry_Select_Adder_11bit SQRT_CSLA_4bit_53_63(A[63:53],B[63:53],Carry[7],Cout,Sum[63:53]);          // 11-bit
    
endmodule
