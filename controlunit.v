module controlunit(
    input wire [6:0] opcode,
    output reg br,
    output reg memreg,
    output reg mr,
    output reg mw,
    output reg alusrc,
    output reg regwr,
    output reg [1:0] aluop
);
always @(*) begin
    // Default values for outputs to avoid latches
    br = 1'b0;
    mr = 1'b0;
    mw = 1'b0;
    memreg = 1'b0;
    alusrc = 1'b0;
    regwr = 1'b0;
    aluop = 2'b00;

    case (opcode)
        // reg type
        7'h33: begin
            br = 1'b0;
            mr = 1'b0;
            mw = 1'b0;
            memreg = 1'b0;
            alusrc = 1'b0;
            regwr = 1'b1;
            aluop = 2'b10;
        end
        // Imm type
        7'h13: begin
            br = 1'b0;
            mr = 1'b0;
            mw = 1'b0;
            memreg = 1'b0;
            alusrc = 1'b1;
            regwr = 1'b1;
            aluop = 2'b10;
        end
        // Load type
        7'h03: begin
            br = 1'b0;
            mr = 1'b1;
            mw = 1'b0;
            memreg = 1'b1;
            alusrc = 1'b1;
            regwr = 1'b1;
            aluop = 2'b00;
        end
        // Store type
        7'h23: begin
            br = 1'b0;
            mr = 1'b0;
            mw = 1'b1;
            memreg = 1'b0;
            alusrc = 1'b1;
            regwr = 1'b0; // regwr should be 0 for store instructions
            aluop = 2'b00;
        end
        // Branch type
        7'h63: begin
            br = 1'b1;
            mr = 1'b0;
            mw = 1'b0;
            memreg = 1'b0;
            alusrc = 1'b0;
            regwr = 1'b0;
            aluop = 2'b01;
        end
        default: begin
            // Default values for unrecognized opcodes
            br = 1'b0;
            mr = 1'b0;
            mw = 1'b0;
            memreg = 1'b0;
            alusrc = 1'b0;
            regwr = 1'b0;
            aluop = 2'b00;
        end
    endcase
end
endmodule
