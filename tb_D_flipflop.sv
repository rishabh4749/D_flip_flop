`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 22:50:16
// Design Name: 
// Module Name: tb_D_flipflop
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


module tb_D_flipflop(

    );
    reg clk,d;
    wire q;
    D_Flip_flop dut(.clk(clk),.d(d),.q(q));
    always #10 clk=~clk;
    initial
    begin
    clk<=0;
    #9;
    d<=1;
    #19;
    d<=0;
    end
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%0b q=%0b",$time,d,q);
    #50 $finish;
    end
endmodule
