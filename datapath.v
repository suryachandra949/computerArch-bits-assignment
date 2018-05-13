module datapath(input clock,input reset);
  
  wire [31:0] Instruction_Code;
  wire [2:0] ALUctrl;
  wire LoadImm;
  wire [31:0] muxout;
  wire [31:0] Read_Data_1,Read_Data_2;
  wire [31:0] result;
  wire RegWrite;
  wire zero;
  wire [31:0] padded_result;
  
  Instruction_Fetch X1(clock,reset,Instruction_Code);
  
  Register_file X2(Instruction_Code[20:16],Instruction_Code[15:11],Instruction_Code[25:21],muxout,Read_Data_1,Read_Data_2,RegWrite,clock);
  alu X3(Read_Data_1,Read_Data_2,ALUctrl,Instruction_Code[10:6],zero,result);
  control X4(Instruction_Code[31:26],Instruction_Code[5:0],LoadImm,ALUctrl,RegWrite);
  
  
  
  padding X5(Instruction_Code[20:0],padded_result);
  
  mux2to1 X6(result,padded_result,LoadImm,muxout);
endmodule
  