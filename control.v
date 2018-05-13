module control(input [5:0] opcode,input [5:0] funct,output reg LoadImm,output reg [2:0] ALUctrl,output reg RegWrite);
  
  always@(opcode or funct)
  begin
    if(opcode == 6'b000000)
      begin
        case (funct)
          6'h20: {LoadImm,RegWrite,ALUctrl}=5'b01000;
          
          6'h22: {LoadImm,RegWrite,ALUctrl}=5'b01001;
          6'h24: {LoadImm,RegWrite,ALUctrl}=5'b01010;
          6'h25: {LoadImm,RegWrite,ALUctrl}=5'b01011;
          6'h00: {LoadImm,RegWrite,ALUctrl}=5'b01100;
          6'h02: {LoadImm,RegWrite,ALUctrl}=5'b01101;
        endcase
      end
    else if (opcode == 6'b111111)
      {LoadImm,RegWrite,ALUctrl}=5'b11xxx;
    
          
  end
endmodule