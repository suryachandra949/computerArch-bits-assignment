module padding(input [20:0] Imm,output [31:0] padded_result);
  assign padded_result ={11'b0,Imm};
endmodule
    
  
    