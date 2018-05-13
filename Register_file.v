module Register_file(input [4:0]Read_Reg_Num_1,input [4:0] Read_Reg_Num_2,input [4:0] Write_Reg_Num,
  input [31:0] Write_Data,
  output  [31:0] Read_Data_1,
  output  [31:0] Read_Data_2,
  input RegWrite,
  input clk);
  
  reg  [31:0] RegMemory[0:31];
  initial
  begin
  $readmemh("register.mem",RegMemory);
  end
  
  assign  Read_Data_1=RegMemory[Read_Reg_Num_1];
  assign  Read_Data_2=RegMemory[Read_Reg_Num_2];
  
  always@(posedge clk)
  begin
    if(RegWrite)
      RegMemory[Write_Reg_Num]<=Write_Data;
  end
      
   
    
endmodule
        