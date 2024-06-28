`timescale 1ns/1ns
`include "alu.v"
module alutb();
 reg [31:0] A;
  reg [31:0] B;
  reg [3:0] alucon;
  wire [31:0] out;
  wire zero;
alu uut(.A(A),.B(B),.alucon(alucon),.out(out),.zero(zero));
initial
begin
$dumpvars(0,alutb);
$dumpfile("alu.vcd");
A=32'h01;
B=32'h01;
alucon=4'b0000;
#10;
A=32'h02;
B=32'h01;
alucon=4'b0001;
#10;
A=32'h02;
B=32'h02;
alucon=4'b0010;
#10;
A=32'h01;
B=32'h01;
alucon=4'b0011;
#10;
A=32'h01;
B=32'h01;
alucon=4'b0100;
#10;
A=32'h01;
B=32'h01;
alucon=4'b0101;
#10;
A=32'h01;
B=32'h01;
alucon=4'b0110;
#10;
end
endmodule