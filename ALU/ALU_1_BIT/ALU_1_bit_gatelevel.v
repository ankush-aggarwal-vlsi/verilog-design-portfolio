`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 07:40:44 PM
// Design Name: 
// Module Name: ALU_1_bit_gatelevel
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


module ALU_1_bit_gatelevel(
    input a,b,s0,s1,
    output y
    );
wire w1 , w2 , w3 , w4 , w5 , w6 , w7 , w8 ;
wire ns0 , ns1 ; 
not(ns0 , s0);
not(ns1 , s1);

and(w1 , a , b);
or(w2 , a , b) ;
xor(w3 , a , b) ;
assign w4 = (a + b) ;

and(w5 , ns1 , ns0 , w1 );
and(w6 , ns1 , s0 , w2 );
and(w7 , s1 , ns0 , w3 );
and(w8 , s1 , s0 , w4 );
   
or(y , w5 , w6 , w7 , w8);

endmodule
