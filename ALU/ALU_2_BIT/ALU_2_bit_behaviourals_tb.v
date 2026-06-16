`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 12:00:34 PM
// Design Name: 
// Module Name: ALU_2_bit_behaviourals_tb
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


module ALU_2_bit_behaviourals_tb ;
reg [1:0]a ; 
reg [1:0]b ; 
reg [1:0]op ;
wire [1:0]y ; 
wire cout ; 
wire bout ;
ALU_2_bit_behaviourals uut(.a(a) , .b(b) , .op(op) , .y(y) , .cout(cout) , .bout(bout));
integer j ;

initial begin
$dumpfile("alu.vcd");
$dumpvars(0, ALU_2_bit_behaviourals_tb);
end

initial
begin
$monitor($time, 
                "a = %b , b = %b , op = %b , y = %b , cout = %b , bout = %b",
                a,b,op,y,cout,bout);
for(j = 0 ; j < 64 ; j = j + 1)
begin
    {op , a , b } = j ;
    #10 ;
end
$finish ;
                
end
endmodule
