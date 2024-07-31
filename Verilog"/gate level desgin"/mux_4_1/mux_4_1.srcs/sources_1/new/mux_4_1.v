`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 13:37:08
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(I0,I1,I2,I3,s0,s1,y);
input I0,I1,I2,I3,s0,s1;
output y;
wire w1,w2,w3,w4,w5,w6;
not(w1,s0);
not(w2,s1);
and(w3,I0,w1,w2);
and(w4,w1,s1,I1);
and(w5,w2,s0,I2);
and(w6,s0,s1,I3);
or(y,w3,w4,w5,w6);
endmodule
