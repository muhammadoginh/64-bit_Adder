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
    wire Sum;
    wire Cout;
    
        // instatntiate the unit under test
    Full_Adder uut(A, B, Cin, Sum, Cout);
    
    initial
    begin
        A = 0;
        B = 0;
        Cin = 0;
    end
    
    always #1 Cin = ~Cin;
    always #2 B = B + 1'b1;
    always #4 A = A + 1'b1;
    
    initial $display("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, Sum, Cout);
    initial $monitor("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, Sum, Cout);
    initial #10 $finish;
    
endmodule
