module alu(input [31:0] a,input [31:0] b , input [2:0] ctrl, input [4:0] shiftamount ,output reg zero,output reg [31:0] result);

always@(a or b or ctrl)
begin
case(ctrl)

3'b000: result = a + b;
3'b001: result = a - b;
3'b010: result = a & b;
3'b011: result = a | b;
3'b100: result = a << shiftamount;
3'b101: result = a >> shiftamount;

default: result =32'bX;
endcase
if(result==0)
  zero=1;
else
  zero=0;
end
endmodule