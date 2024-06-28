`timescale 1ns/1ns
`include "pc.v"
module pctb();
reg [31:0] pcin;
reg clk,rst;
wire [31:0]pcnext;
pc uut (.pcin(pcin),.clk(clk),.rst(rst),.pcnext(pcnext));
always
begin
$dumpfile("pc.vcd");
$dumpvars(0,pctb);
clk=0;
pcin=32'h01;
#10;
rst=1;
#10;
rst=0;
#10;
pcin=32'h2;
#100 $finish;
end
always
#5 clk=~clk;
endmodule
