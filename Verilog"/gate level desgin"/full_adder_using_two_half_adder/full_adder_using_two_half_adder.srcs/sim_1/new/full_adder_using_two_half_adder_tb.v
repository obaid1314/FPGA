`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2024 03:08:46
// Design Name: 
// Module Name: full_adder_using_two_half_adder_tb
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


module full_adder_using_two_half_adder_tb();
reg a,b,c;
wire s,c_out;
full_adder_using_two_half_adder f1(.a(a),.b(b),.c(c),.s(s),.c_out(c_out));
initial
begin
a=0;b=0;c=0;
#100
a=0;b=0;c=1;
#100
a=0;b=1;c=0;
#100
a=0;b=1;c=1;
#100
a=1;b=0;c=0;
#100
a=1;b=0;c=1;
#100
a=1;b=1;c=0;
#100
a=1;b=1;c=1;
#100 $finish;
end
initial
begin
$display("\t\t\t\t Time \ta \t b \t c \t s \t c_out");
$monitor($time,"\t",a,"\t",b,"\t",c,"\t",s,"\t",c_out);
end
endmodule

