`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 11:36:09 AM
// Design Name: 
// Module Name: CSLA_64bit
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


module CSLA_64bit(
    input [63:0] A,
    input [63:0] B,
    input Cin,
    output [63:0] Sum,
    output Cout
    );
    
    // intermediate for connecting each block
    wire [14:0] Carry;
    
    // instantiate all components
    RCA_4bit RCA_4bit_0_3(A[3:0],B[3:0],Cin,Sum[3:0],Carry[0]);
    CSLA_4bit CSLA_4bit_4_7(A[7:4],B[7:4],Carry[0],Sum[7:4],Carry[1]);
    CSLA_4bit CSLA_4bit_8_11(A[11:8],B[11:8],Carry[1],Sum[11:8],Carry[2]);
    CSLA_4bit CSLA_4bit_12_15(A[15:12],B[15:12],Carry[2],Sum[15:12],Carry[3]);
    CSLA_4bit CSLA_4bit_16_19(A[19:16],B[19:16],Carry[3],Sum[19:16],Carry[4]);
    CSLA_4bit CSLA_4bit_20_23(A[23:20],B[23:20],Carry[4],Sum[23:20],Carry[5]);
    CSLA_4bit CSLA_4bit_24_27(A[27:24],B[27:24],Carry[5],Sum[27:24],Carry[6]);
    CSLA_4bit CSLA_4bit_28_31(A[31:28],B[31:28],Carry[6],Sum[31:28],Carry[7]);
    CSLA_4bit CSLA_4bit_32_35(A[35:32],B[35:32],Carry[7],Sum[35:32],Carry[8]);
    CSLA_4bit CSLA_4bit_36_39(A[39:36],B[39:36],Carry[8],Sum[39:36],Carry[9]);
    CSLA_4bit CSLA_4bit_40_43(A[43:40],B[43:40],Carry[9],Sum[43:40],Carry[10]);
    CSLA_4bit CSLA_4bit_44_47(A[47:44],B[47:44],Carry[10],Sum[47:44],Carry[11]);
    CSLA_4bit CSLA_4bit_48_51(A[51:48],B[51:48],Carry[11],Sum[51:48],Carry[12]);
    CSLA_4bit CSLA_4bit_52_55(A[55:52],B[55:52],Carry[12],Sum[55:52],Carry[13]);
    CSLA_4bit CSLA_4bit_56_59(A[59:56],B[59:56],Carry[13],Sum[59:56],Carry[14]);
    CSLA_4bit CSLA_4bit_60_63(A[63:60],B[63:60],Carry[14],Sum[63:60],Cout); 
    
endmodule
