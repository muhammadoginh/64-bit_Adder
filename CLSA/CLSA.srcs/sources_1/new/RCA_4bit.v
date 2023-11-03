`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 09:27:15 PM
// Design Name: 
// Module Name: RCA_4bit
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


module RCA_4bit(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    
    // intermediate
    wire [2:0] Carry;
    
    Full_Adder FA1(A[0],B[0],Cin,Sum[0],Carry[0]);
    Full_Adder FA2(A[1],B[1],Carry[0],Sum[1],Carry[1]);
    Full_Adder FA3(A[2],B[2],Carry[1],Sum[2],Carry[2]);
    Full_Adder FA4(A[3],B[3],Carry[2],Sum[3],Cout);
    
endmodule
