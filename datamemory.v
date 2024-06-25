module datamemory (input wire [4:0] address,
    input wire [31:0] datain,
    input wire MemWrite,
    input wire MemRead,
    output reg [31:0] dataout,
    input wire clk
);
reg [31:0] datamem [31:0];
always @(posedge clk)
 begin
    if(MemWrite)
  
    
    datamem [address] <= datain;
    
      
   else if(MemRead==1)
    
       
      dataout<=datamem[ address];
      
    
 end
endmodule 

