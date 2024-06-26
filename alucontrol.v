module alucontrol(input wire [1:0] aluop,input wire [6:0] f7,input wire [2:0] f3,output reg [3:0] alucon);


always@(*)
 begin
    case(aluop)
    2'b00:alucon<=4'b0000;
    2'b01:alucon<=4'b0001;
    2'b10:case({f7,f3})

10'h000:alucon<=4'b0000;
10'h100:alucon<=4'b0001;
10'h004:alucon<=4'b0010;
10'h006:alucon<=4'b0011;
10'h007:alucon<=4'b0100;
10'h001:alucon<=4'b0101;
10'h005:alucon<=4'b0110;
default :alucon<=4'b1111;
    endcase
default :alucon<=4'b1111;
    endcase
end













endmodule