module pc(pcnext,pcin,clk,rst);
input wire [31:0]pcin;
output reg [31:0]pcnext;
input wire clk,rst;
always @(posedge clk ) begin
    if(rst)
    pcnext=32'h0;
    else
        pcnext=pcin;
end
endmodule