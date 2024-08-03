`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2024 12:57:25 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg x,y,z;
wire s,c_out;
full_adder f1(x,y,z,s,c_out);
initial
begin
x=0;y=0;z=0;
#100
x=0;y=0;z=1;
#100
x=0;y=1;z=0;
#100
x=0;y=1;z=1;
#100
x=1;y=0;z=0;
#100
x=1;y=0;z=1;
#100
x=1;y=1;z=0;
#100
x=1;y=1;z=1;
#100 $finish;
end
initial
begin
$display("\t\t\t\ttime\tx\ty\tz\ts\tc_out");
$monitor($time,"\t",x,"\t",y,"\t",z,"\t",s,"\t",c_out);
end
endmodule
