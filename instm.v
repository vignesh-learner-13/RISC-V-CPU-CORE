module instm(read,out);
input wire [31:0]read;
output reg [31:0]out;
input wire clk;
reg [31:0] memory [1023:0];
always @(posedge clk )
 begin
    out<=memory[read];
end
endmodule