`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 08:34:50 PM
// Design Name: 
// Module Name: Carry_Select_Adder_4bit
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


module Carry_Select_Adder_4bit(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output Cout,
    output [3:0] Sum
    );
    
    // intermediate
    wire [3:0] Sum0; // sum for "0" carry propagation
    wire [3:0] Sum1; // sum for "1" carry propagation
    wire [2:0] Carry0; // intermediate for "0" carry propagation
    wire [2:0] Carry1; // intermediate for "1" carry propagation
    wire Cout0; // result for "0" carry propagation
    wire Cout1; // result for "1" carry propagation
    
    // "0" carry propogation
    Full_Adder FA0_1(A[0],B[0],1'b0,Carry0[0],Sum0[0]);
    Full_Adder FA0_2(A[1],B[1],Carry0[0],Carry0[1],Sum0[1]);
    Full_Adder FA0_3(A[2],B[2],Carry0[1],Carry0[2],Sum0[2]);
    Full_Adder FA0_4(A[3],B[3],Carry0[2],Cout0,Sum0[3]);
    
    // "1" carry propogation
    Full_Adder FA1_1(A[0],B[0],1'b1,Carry1[0],Sum1[0]);
    Full_Adder FA1_2(A[1],B[1],Carry1[0],Carry1[1],Sum1[1]);
    Full_Adder FA1_3(A[2],B[2],Carry1[1],Carry1[2],Sum1[2]);
    Full_Adder FA1_4(A[3],B[3],Carry1[2],Cout1,Sum1[3]);
    
    // Select the correct sum and carry outputs based on the carry-in signal
    assign Sum = (Cin) ? Sum1 : Sum0;
    assign Cout = (Cin) ? Cout1 : Cout0;
endmodule
