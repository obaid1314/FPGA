`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2024 12:31:23 AM
// Design Name: 
// Module Name: nand_gate_tb
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


module nand_gate_tb();
reg x,y;
wire z;
nand_gate g1(x,y,z);
initial
begin
x=0;y=0;
#100
x=0;y=1;
#100
x=1;y=0;
#100
x=1;y=1;
#100 $finish;
end
initial
begin
$display("\t\t\t\tTime\tx\ty\tz");
$monitor($time,"\t",x,"\t",y,"\t",z);
end
endmodule
