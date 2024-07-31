`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 12:09:20
// Design Name: 
// Module Name: decoder_2_4_tb
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


module decoder_2_4_tb();
reg e,a,b;
wire d0,d1,d2,d3;
decoder_2_4 dec1(e,a,b,d0,d1,d2,d3);
initial
begin
e=0;a=0;b=0;
#100
e=0;a=0;b=1;
#100
e=0;a=1;b=0;
#100
e=0;a=1;b=1;
#100 $stop;
end
initial
begin
$display("        \t\ttime   e   a   b   d0   d1  d2  d3");
$monitor($time,"\t",e,"\t",a,"\t",b,"\t",d0,"\t",d1,"\t",d2,"\t",d3);
end
endmodule
