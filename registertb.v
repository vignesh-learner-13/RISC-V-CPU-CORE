`timescale 1ns/1ns
`include "registerfile.v"
module registertb;


 reg [4:0] rr1;
reg [4:0] rr2;
 reg[4:0] wr;
 reg[31:0] wd;
wire [31:0] rd1;
wire [31:0] rd2;
reg clk;
reg wen;
   registerfile uut(.rr1(rr1),.rr2(rr2),.wr(wr),.wd(wd),.wen(wen),.clk(clk),.rd1(rd1),.rd2(rd2));

  initial begin 

     $dumpfile("registertb.vcd");
    $dumpvars(0,registertb);
    clk=0;
wen=1;
wr= 5'b00001;
wd=8'ha;
#30;
wr= 5'b00010;
wd=8'hb;
#40;
wen=0;
rr1=5'b00001;
rr2=5'b00010;
    #100 $finish;
  end
  always
#(10/2) clk=~clk;
endmodule