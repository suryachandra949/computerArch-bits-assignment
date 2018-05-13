`timescale 1ns / 1ps
module Instruction_Memory(
  input [31:0] pc,
  input reset,
  output [31:0] Instruction_Code);

reg [7:0] Mem[0:27];




assign Instruction_Code = {Mem[pc],Mem[pc+1],Mem[pc+2],Mem[pc+3]};

always@(reset)
begin

if(reset ==0)
begin
$readmemh("instructions.mem",Mem);
end
end
endmodule