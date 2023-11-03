`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digital Integrated Systems Lab. Inha Univ.
// Engineer: Muhammad Ogin Hasanuddin
// 
// Create Date: 11/02/2023 05:27:57 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A,
    input B,
    input Cin,
    output Cout,
    output Sum
    );
    
    assign Cout = (A & B) + (B & Cin) + (A & Cin);
    assign Sum = A ^ B ^ Cin;
endmodule
