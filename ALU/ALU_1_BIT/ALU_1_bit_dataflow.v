`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 07:29:23 PM
// Design Name: 
// Module Name: ALU_1_bit_dataflow
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


module ALU_1_bit_dataflow(
    input a , b ,s0 , s1,
    output y
    );
assign y = (~s1 & ~s0 & (a & b)) | (~s1 & s0 & (a | b)) | (s1 & ~s0 & (a ^ b)) | (s1 & s0 & (a + b)) ; 
endmodule
