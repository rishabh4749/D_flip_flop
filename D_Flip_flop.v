`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 22:43:48
// Design Name: 
// Module Name: D_Flip_flop
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


module D_Flip_flop(
    input clk,
    input d,
    output reg q
    );
    always@(posedge clk)
    begin
    q<=d;
    end
endmodule
