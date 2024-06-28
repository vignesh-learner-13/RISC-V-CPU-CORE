`timescale 1ns/1ns
`include "controlunit.v"
module controltb();
 reg [6:0]opcode;
 wire br;
 wire memreg;
 wire mr;
 wire mw;
 wire alusrc;
 wire regwr;
 wire [1:0]aluop;
 controlunit uut (.opcode(opcode),.br(br),.memreg(memreg),.mr(mr),.mw(mw),.alusrc(alusrc),.regwr(regwr),.aluop(aluop));
 //controlunit uut(.opcode(opcode),.br(br),.memreg(memreg),.mr(mr),.mw(mw),.alusrc(alusrc),.regwr(regwr),.aluop(aluop));
 initial
 begin
 $dumpfile("control.vcd");
 $dumpvars(0,controltb);
 opcode =7'h33;
 #10;
 opcode =7'h13;
 #10;
 opcode =7'h03;
 #10;
 opcode =7'h23;
 #10;
 opcode =7'h63;
 #10;
 #100 $finish;
 end
 endmodule