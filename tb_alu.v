`timescale 1ns/1ps
module tb_alu;
reg clk,rst;
reg [7:0] a,b;
reg [3:0] sel;
wire [7:0] out;

alu dut(.clk(clk),.rst(rst),.a(a),.b(b),.sel(sel),.out(out));

always #5 clk=~clk;

initial begin
clk=0; rst=1; a=0; b=0; sel=0;
#10 rst=0;
a=8'd10; b=8'd5;
repeat(10) begin
 sel=sel+1;
 #10;
end
$finish;
end
endmodule
