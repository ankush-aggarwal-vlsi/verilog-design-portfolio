`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 07:34:16 PM
// Design Name: 
// Module Name: ALU_1_bit_dataflow_testbench
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


module ALU_1_bit_dataflow_testbench ;
reg a , b , s0 , s1 ;
wire y ;
ALU_1_bit_dataflow uut(.a(a) , .b(b) , .s0(s0) , .s1(s1) , .y(y));
integer j ;
initial
begin
$monitor($time, 
                "a = %b , b = %b , s0 = %b , s1 = %b , y = %b",
                a,b,s0,s1,y);
for(j = 0 ; j < 16 ; j = j + 1)
begin
{s1 , s0 , a , b} = j ;
#10 ; 

end
$finish;
end
endmodule
