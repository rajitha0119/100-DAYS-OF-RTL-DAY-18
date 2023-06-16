`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 21:29:13
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb();
reg [7:0]i;
reg enable;
wire [2:0]y;

priority_encoder aab(.enable(enable),.i(i),.y(y));
initial begin
$monitor("enable=%b i=%b y=%b",enable,i,y);
end
initial begin
enable=1; i=120; #5
enable=1; i=64; #5
enable=1; i=32; #5
enable=1; i=16; #5
enable=1; i=8; #5
enable=1; i=4; #5
enable=1; i=2; 
//enable=0; i=8'bx; 
end

endmodule
