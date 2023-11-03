`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2023 01:34:18 PM
// Design Name: 
// Module Name: SQRT_CSLA_64bit_tb
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


module SQRT_CSLA_64bit_tb();
    // input
    reg [63:0] A;
    reg [63:0] B;
    reg Cin;
    
    // output
    wire Cout;
    wire [63:0] Sum;
        
    // instatntiate the unit under test
    SQRT_CSLA_64bit uut(A, B, Cin, Cout, Sum);
    
    initial
    begin
        A = 64'b0;
        B = 64'b0;
        Cin = 0;
    end
    
    always #1 Cin = ~Cin;
    always #2 B = B + 1'b1;
    always #4 A = A + 1'b1;
    
    initial $display("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, Cout, Sum);
    initial $monitor("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, Cout, Sum);
    initial #40 $finish;
endmodule
