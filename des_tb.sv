`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2024 16:46:45
// Design Name: 
// Module Name: des_tb
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


module des_tb(

    );
    reg clk,in,reset;
    wire out;
    always #5 clk=~clk;
    des dut(.clk(clk),.in(in),.reset(reset),.out(out));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%t in=%b reset=%b out=%b",$time,in,reset,out);
    clk<=0;
    reset<=0;
    in<=0;
    #4 in<=1;
    #10 in<=0;
    #10 reset<=1;
    #10 in<=1;
    #10 $finish;
    end
endmodule
