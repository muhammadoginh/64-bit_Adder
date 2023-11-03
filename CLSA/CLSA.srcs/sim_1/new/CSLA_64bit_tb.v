`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 03:40:23 PM
// Design Name: 
// Module Name: CSLA_64bit_tb
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


module CSLA_64bit_tb();
    // input
    reg [63:0] A;
    reg [63:0] B;
    reg Cin;
    
    // output
    wire [63:0] Sum;
    wire Cout;
    
    // instatntiate the unit under test
    CSLA_64bit uut(A, B, Cin, Sum, Cout);
    
    initial
    begin
        A = 64'b0;
        B = 64'b0;
        Cin = 0;
    end
    
    always #1 Cin = ~Cin;
    always #2 B = B + 1'b1;
    always #4 A = A + 1'b1;
    
    initial $display("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, Sum, Cout);
    initial $monitor("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, Sum, Cout);
    initial #50 $finish;
endmodule
