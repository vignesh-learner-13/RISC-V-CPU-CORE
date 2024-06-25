`timescale 1ns/1ns
`include "datamemory.v"

module datatb();
 reg [4:0] address;
   reg [31:0] datain;
     reg MemWrite;
    reg MemRead;
     wire [31:0] dataout;
    reg clk;

datamemory uut(.address(address),.datain(datain),.MemWrite(MemWrite),.MemRead(MemRead),.dataout(dataout),.clk(clk));

initial 
begin
    $dumpfile("datatb.vcd");
    $dumpvars(0,datatb);
clk=0;
MemWrite=1;
address=5'b00001;
datain=4'h3;

#10;
MemWrite=0;
MemRead=1;
address=5'b00001;
#10
MemWrite=1;
address=5'b00010;
datain=4'h2;
#10;
MemWrite=0;
MemRead=1;
address=5'b00010;
#30;


 #100 $finish;
end 
always
#(10/2) clk = ~clk;


    endmodule