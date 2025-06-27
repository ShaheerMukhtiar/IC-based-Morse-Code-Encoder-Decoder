// tb_MorseCodeEncoder.v
initial begin
  alpha_in = 5'b00101; // E
  num = 2'b00;
  #10;
  alpha_in = 5'b01110; // N
  num = 2'b01;
  #10;
  alpha_in = 5'b00111; // G
  num = 2'b10;
  #10;
  alpha_in = 5'b10001; // Q
  num = 2'b11;
  #10;
  $stop;
end
