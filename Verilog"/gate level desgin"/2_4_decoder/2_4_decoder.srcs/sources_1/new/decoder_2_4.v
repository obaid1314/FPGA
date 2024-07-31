`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 11:53:53
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(e,a,b,d0,d1,d2,d3);
input e,a,b;
output d0,d1,d2,d3;
wire w1,w2,w3;
not(w1,a);
not(w2,b);
not(w3,e);
nand(d0,w1,w2,w3);
nand(d1,w1,b,w3);
nand(d2,a,w2,w3);
nand(d3,a,b,w3);
endmodule
