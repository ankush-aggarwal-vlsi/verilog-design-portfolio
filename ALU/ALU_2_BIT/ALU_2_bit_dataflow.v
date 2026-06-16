`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 12:14:36 PM
// Design Name: 
// Module Name: ALU_2_bit_dataflow
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


module ALU_2_bit_dataflow(
    input  [1:0] a,
    input  [1:0] b,
    input  [1:0] op,
    output [1:0] y,
    output cout,
    output bout
);

assign y =
    (op == 2'b00) ? (a & b) :
    (op == 2'b01) ? (a | b) :
    (op == 2'b10) ? (a + b) :
                     (a - b);

assign cout = (op == 2'b10) ? (a + b > 3) : 0;
assign bout = (op == 2'b11) ? (a < b) : 0;

endmodule