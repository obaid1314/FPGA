`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 13:46:56
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb();
reg I0,I1,I2,I3,S0,S1;
wire y;
mux_4_1 m1(I0,I1,I2,I3,S0,S1,y);
initial 
begin
I0=1 ;I1=0 ;I2=1 ;I3=0;

$display("I0=%b I1=%b I2=%b I3=%b\n",I0,I1,I2,I3);
S0=0;S1=0;
#100
$display("Time=%d S0=%b S1=%b y=%b\n",$time,S0,S1,y);
S0=0;S1=1;
#100
$display("Time=%d S0=%b S1=%b y=%b\n",$time,S0,S1,y);
S0=1;S1=0;
#100
$display("Time=%d S0=%b S1=%b y=%b\n",$time,S0,S1,y);
S0=1;S1=1;
#100
$display("Time=%d S0=%b S1=%b y=%b\n",$time,S0,S1,y);
#100 $stop;
end
endmodule
