`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 07:12:12 PM
// Design Name: 
// Module Name: ALU_1_bit_behaviourals
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


module ALU_1_bit_behaviourals(
    input a , b , s1 , s0 ,
    output reg y
    );
always @(*)
begin
if ({s1,s0} == 2'b00)
y = ( a & b ) ;
else if ({s1,s0} == 2'b01)
y = ( a | b ) ;
else if ({s1,s0} == 2'b10)
y = ( a ^ b ) ;
else
y = ( a + b ) ;

end
endmodule
