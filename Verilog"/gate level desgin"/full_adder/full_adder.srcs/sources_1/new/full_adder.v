`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2024 00:44:25
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,c,s,c_out);
input a,b,c;
output s,c_out;
wire w1,w2,w3;
xor(w1,a,b);
and(w2,a,b);
and(w3,c,w1);
xor(s,w1,c);
or(c_out,w2,w3);
endmodule
