// parameters.v (or top of alphaROM.v)

parameter A = 5'b00001;
parameter B = 5'b00010;
parameter C = 5'b00011;
// ... continue up to Z = 5'b11010

initial begin
  rom_data1[0] = 1'b0; // E (.)
  rom_data1[1] = 1'b1; // T (-)
  // Initialize other Morse bits accordingly
end
