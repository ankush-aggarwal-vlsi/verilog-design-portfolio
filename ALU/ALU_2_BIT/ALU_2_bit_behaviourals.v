`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:45:07 AM
// Design Name: 
// Module Name: ALU_2_bit_behaviourals
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


module ALU_2_bit_behaviourals(
    input [1:0]a , 
    input [1:0]b , 
    input [1:0]op,
    output reg [1:0]y , 
    output reg cout , 
    output reg bout
    );

always @(*)
begin

y = 2'b00 ;
cout = 0 ;
bout = 0 ;

if (op == 2'b00)
begin y = a & b ; end
else if(op == 2'b01)
begin y = a | b ; end
else if(op == 2'b10)
begin {cout , y} = a + b ; 
end
else 
begin {bout , y} = a - b ;
end

end
endmodule
