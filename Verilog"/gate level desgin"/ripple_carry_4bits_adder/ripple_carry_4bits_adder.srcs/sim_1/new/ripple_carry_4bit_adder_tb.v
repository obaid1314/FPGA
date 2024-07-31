`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 16:22:11
// Design Name: 
// Module Name: ripple_carry_4bit_adder_tb
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


module ripple_carry_4bit_adder_tb();
reg [3:0] A,B;
wire [3:0] S;
wire C_out;
ripple_carry_4bit_adder A1(A,B,S,C_out);
initial
begin
A=4'd2;B=4'd3;
#100
$display("Time=%d A=%b B=%b S=%b C_out=%b\n",$time,A,B,S,C_out);
A=4'd3;B=4'd5;
#100
$display("Time=%d A=%b B=%b S=%b C_out=%b\n",$time,A,B,S,C_out);
A=4'd4;B=4'd2;
#100
$display("Time=%d A=%b B=%b S=%b C_out=%b\n",$time,A,B,S,C_out);
#100 $stop;
end
endmodule
