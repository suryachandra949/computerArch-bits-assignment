module datapath_tb;
  reg clock;
  reg reset;
  datapath T1(clock,reset);
  initial
  begin
    #5 reset = 0;
    #8 reset =1;
  end
  
  initial
  begin
    clock =1;
    repeat(15)
    #10 clock = ~clock;
  end
endmodule    