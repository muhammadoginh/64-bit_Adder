module Carry_Select_Adder_7bit(
    input [6:0] A,
    input [6:0] B,
    input Cin,
    output Cout,
    output [6:0] Sum
    );
    
    // intermediate
    wire [6:0] Sum0; // sum for "0" carry propagation
    wire [6:0] Sum1; // sum for "1" carry propagation
    wire [5:0] Carry0; // intermediate for "0" carry propagation
    wire [5:0] Carry1; // intermediate for "1" carry propagation
    wire Cout0; // result for "0" carry propagation
    wire Cout1; // result for "1" carry propagation
    
    // "0" carry propogation
    Full_Adder FA0_1(A[0],B[0],1'b0,Carry0[0],Sum0[0]);
    Full_Adder FA0_2(A[1],B[1],Carry0[0],Carry0[1],Sum0[1]);
    Full_Adder FA0_3(A[2],B[2],Carry0[1],Carry0[2],Sum0[2]);
    Full_Adder FA0_4(A[3],B[3],Carry0[2],Carry0[3],Sum0[3]);
    Full_Adder FA0_5(A[4],B[4],Carry0[3],Carry0[4],Sum0[4]);
    Full_Adder FA0_6(A[5],B[5],Carry0[4],Carry0[5],Sum0[5]);
    Full_Adder FA0_7(A[6],B[6],Carry0[5],Cout0,Sum0[6]);
    
    // "1" carry propogation
    Full_Adder FA1_1(A[0],B[0],1'b1,Carry1[0],Sum1[0]);
    Full_Adder FA1_2(A[1],B[1],Carry1[0],Carry1[1],Sum1[1]);
    Full_Adder FA1_3(A[2],B[2],Carry1[1],Carry1[2],Sum1[2]);
    Full_Adder FA1_4(A[3],B[3],Carry1[2],Carry1[3],Sum1[3]);
    Full_Adder FA1_5(A[4],B[4],Carry1[3],Carry1[4],Sum1[4]);
    Full_Adder FA1_6(A[5],B[5],Carry1[4],Carry1[5],Sum1[5]);
    Full_Adder FA1_7(A[6],B[6],Carry1[5],Cout1,Sum1[6]);
    
    // Select the correct sum and carry outputs based on the carry-in signal
    assign Sum = (Cin) ? Sum1 : Sum0;
    assign Cout = (Cin) ? Cout1 : Cout0;
    
endmodule
