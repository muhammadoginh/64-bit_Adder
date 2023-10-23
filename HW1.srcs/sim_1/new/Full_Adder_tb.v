`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:14:39 PM
// Design Name: 
// Module Name: Full_Adder_tb
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


module Full_Adder_tb();
    // input
    reg A;
    reg B;
    reg Cin;
    
    // output
    wire Cout;
    wire Sum;
    
    // instatntiate the unit under test
    Full_Adder uut(A, B, Cin, Cout, Sum);
    
    initial
    begin
        A = 0;
        B = 0;
        Cin = 0;
    end
    
    initial always #1 Cin = ~Cin;
endmodule
