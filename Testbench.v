`timescale 1ns / 1ps

module Testbench_1;
reg[3:0] A_tb,B_tb;
reg CIN_tb;
wire[3:0] SUM_tb;
wire COUT_tb;

Design_2 uut(.A(A_tb), .B(B_tb), .CIN(CIN_tb), .SUM(SUM_tb), .COUT(COUT_tb));
initial
begin
$monitor("Time=%0t  a=%b  b=%b  cin=%b || sum=%b  cout=%b ",$time,A_tb,B_tb,CIN_tb,SUM_tb,COUT_tb);
A_tb=4'b0000;B_tb=4'b0000;CIN_tb=0; #5;
A_tb=4'b1111;B_tb=4'b1111;CIN_tb=1; #5;
A_tb=4'b1001;B_tb=4'b0000;CIN_tb=0; #5;
A_tb=4'b0010;B_tb=4'b1010;CIN_tb=1; #5;

$finish;
end
endmodule
