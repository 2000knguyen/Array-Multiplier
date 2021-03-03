`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB
// Engineer: Kendrick Nguyen
// Create Date: 02/01/2021 8:29 PM
// Design Name: 361_Lab1
// Module Name: ArrMult_4bit_tb
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module ArrMult_4bit_tb();
reg [3:0] a_tb, b_tb;
wire [7:0] prod_tb;

ArrMult_4bit uut(.a(a_tb), .b(b_tb), .prod(prod_tb));

initial begin //remember to switch to unsigned variables
//example 1
    a_tb = 4'b0000;//0
    b_tb = 4'b0000;//0
    #10
    //0*0=0 
    //00000000

//example 2
    a_tb = 4'b1101;//13
    b_tb = 4'b1001;//9
    #10
    //13*9=117
    //01110101

//example 3
    a_tb = 4'b1010;//10
    b_tb = 4'b0010;//2
    #10
    //10*2=20
    //00010100
    
//example 4
    a_tb = 4'b1111;//15
    b_tb = 4'b1111;//15
    #10
    //15*15=225
    //11100001
    
    $finish;
end
endmodule