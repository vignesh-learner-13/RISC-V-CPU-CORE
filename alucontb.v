`timescale 1ns/1ns
`include "alucontrol.v"
module alucontb();
 reg [1:0] aluop;
 reg [6:0] f7;
 reg [2:0] f3;
 wire [3:0] alucon;
 alucontrol uut(.aluop(aluop), .f7(f7), .f3(f3), .alucon(alucon));
 initial
 begin
  

  $dumpvars(0,alucontb);
$dumpfile("alucon.vcd");
aluop=2'b00;
#10;
aluop=2'b01;
#10;
aluop=2'b10;
{f7,f3}=10'h000;
#10;
aluop=2'b10;
{f7,f3}=10'h100;
#10;
aluop=2'b10;
{f7,f3}=10'h004;
#10;
aluop=2'b10;
{f7,f3}=10'h006;
#10;
aluop=2'b10;
{f7,f3}=10'h007;
#10;
aluop=2'b10;
{f7,f3}=10'h001;
#10;
aluop=2'b10;
{f7,f3}=10'h005;
#10;
 end

endmodule