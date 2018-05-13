module mux2to1(input [31:0] a, input [31:0] b, input LoadImm ,output [31:0] out);
  assign out = LoadImm ? b : a;
endmodule