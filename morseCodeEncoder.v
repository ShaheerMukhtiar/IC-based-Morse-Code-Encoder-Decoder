module MorseCodeEncoder (alpha_in, num, clk, out1, out2, out3, out4);
  input clk;
  input [4:0] alpha_in;
  input [1:0] num;
  output out1;
  output [1:0] out2;
  output [2:0] out3;
  output [3:0] out4;
  alphaROM r (out1, out2, out3, out4, num, alpha_in, clk);
endmodule
