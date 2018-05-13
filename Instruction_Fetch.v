`timescale 1ns / 1ps
module Instruction_Fetch(input clk,input reset,output [31:0] Instruction_Code);

reg [31:0] pc;

Instruction_Memory ins(pc,reset,Instruction_Code);

always @(posedge clk,negedge reset)
begin
if(reset ==0)
pc <=0;
else
pc <= pc +4;
end
  
endmodule