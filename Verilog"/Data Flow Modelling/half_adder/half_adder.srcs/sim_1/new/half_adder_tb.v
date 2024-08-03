`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2024 12:49:01 AM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg x,y;
wire s,c;
half_adder h1(x,y,s,c);
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
$display("\t\t\t\tTime\tx\ty\ts\tc");
$monitor($time,"\t",x,"\t",y,"\t",s,"\t",c);
end
endmodule
