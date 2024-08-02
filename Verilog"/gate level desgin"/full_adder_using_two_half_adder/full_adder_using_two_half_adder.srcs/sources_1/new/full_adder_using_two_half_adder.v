`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2024 03:06:51
// Design Name: 
// Module Name: full_adder_using_two_half_adder
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


module full_adder_using_two_half_adder(a,b,c,s,c_out);
input a,b,c;
output s,c_out;
wire s1,c1,c2;

half_adder h1(.a(a),.b(b),.s(s1),.c(c1));

half_adder h2(s1,c,s,c2);
or(c_out,c1,c2);
endmodule
/////////////////////////////////////////////////
