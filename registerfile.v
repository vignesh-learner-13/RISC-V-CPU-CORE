module registerfile(rr1,rr2,wr,wd,wen,clk,rd1,rd2);
input [4:0] rr1;
input [4:0] rr2;
input [4:0] wr;
input [31:0] wd;
input wen;
output reg [31:0] rd1;
output reg [31:0] rd2;
input clk;
reg [31:0] f [31:0];

always @(posedge clk ) 
begin
    if(wen)
   f[wr] <= wd;  
   else if (wen==0)
   rd1=f[rr1];
   rd2=f[rr2];
end
endmodule
