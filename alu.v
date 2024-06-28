module alu(input wire [31:0] A, input wire [31:0] B,input wire [3:0] alucon,output reg [31:0] out,output reg zero);

always @(A,B,alucon) 
begin
 
    case (alucon)
    4'b0000:out = A + B;
    4'b0001:out = A - B;
    4'b0010:out = A ^ B;
    4'b0011:out = A | B;
    4'b0100:out = A & B;
    4'b0101:out = A << B;
    4'b0110:out = A >> B;
default:out=0;    
    endcase

    zero = (out == 0) ? 1'b1 : 1'b0;
end
endmodule
