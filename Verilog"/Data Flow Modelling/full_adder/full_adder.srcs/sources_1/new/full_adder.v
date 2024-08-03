`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2024 12:56:48 AM
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
wire w1,w2,w3,w4;
// for sum
assign w1=a^b;
assign s=w1^c;
// for carry
assign w2=a&b;
assign w3=b&c;
assign w4=a&c;
assign c_out=w2|w3|w4;
endmodule
