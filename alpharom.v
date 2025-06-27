module alphaROM (out1, out2, out3, out4, in_morse_bit, alpha_in, clk);
  input clk;
  input [1:0] in_morse_bit;
  input [4:0] alpha_in;
  output reg out1;tput reg [2:0] out3;
  output reg [3:0] out4;
 
  reg rom_data1[1:0];
  reg [1:0] rom_data2 [3:0];
  reg [2:0] rom_data3 [7:0];
  reg [3:0] rom_data4 [11:0];
 
  parameter A = 5'b00001; // A
  parameter B = 5'b00010; // B
  parameter C = 5'b000
  output reg [1:0] out2;
  ou 11; // C
  parameter D = 5'b00100; // D
  parameter E = 5'b00101; // E
  parameter F = 5'b00110; // F
  parameter G = 5'b00111; // G
  parameter H = 5'b01000; // H
  parameter I = 5'b01001; // I
  parameter J = 5'b01010; // J
  parameter K = 5'b01011; // K
  parameter L = 5'b01100; // L
  parameter M = 5'b01101; // M
  parameter N = 5'b01110; // N
  parameter O = 5'b01111; // O
  parameter P = 5'b10000; // P
  parameter Q = 5'b10001; // Q
  parameter R = 5'b10010; // R
  parameter S = 5'b10011; // S
  parameter T = 5'b10100; // T
  parameter U = 5'b10101; // U
  parameter V = 5'b10110; // V
  parameter W = 5'b10111; // W
  parameter X = 5'b11000; // X
  parameter Y = 5'b11001; // Y
  parameter Z = 5'b11010; // Z
 
  initial begin
    rom_data1[0] = 1'b0; // E (dot)
    rom_data1[1] = 1'b1; // T (dash)
  end
 
  initial begin
    rom_data2[0] = 2'b01; // A (dot dash)
    rom_data2[1] = 2'b00; // I (dot dot)
    rom_data2[2] = 2'b11; // M (dash dash)
    rom_data2[3] = 2'b10; // N (dash dot)
  end
 
  initial begin
    rom_data3[0] = 3'b100; // D (dash dot dot)
    rom_data3[1] = 3'b110; // G (dash dash dot)
    rom_data3[2] = 3'b101; // K (dash dot dash)
    rom_data3[3] = 3'b111; // O (dash dash dash)
    rom_data3[4] = 3'b010; // R (dot dash dot)
    rom_data3[5] = 3'b000; // S (dot dot dot)
    rom_data3[6] = 3'b011; // W (dot dash dash)
    rom_data3[7] = 3'b001; // U (dot dot dash)
  end
 
  initial begin
    rom_data4[0] = 4'b1000; // B (dash dot dot dot)
    rom_data4[1] = 4'b1010; // C (dash dot dash dot)
    rom_data4[2] = 4'b0010; // F (dot dot dash dot)
    rom_data4[3] = 4'b0000; // H (dot dot dot dot)
    rom_data4[4] = 4'b0111; // J (dot dash dash dash)
    rom_data4[5] = 4'b0100; // L (dot dash dot dot)
    rom_data4[6] = 4'b0110; // P (dot dash dash dot)
    rom_data4[7] = 4'b1101; // Q (dash dash dot dash)
    rom_data4[8] = 4'b0001; // V (dot dot dot dash)
    rom_data4[9] = 4'b1001; // X (dash dot dot dash)
    rom_data4[10] = 4'b1011; // Y (dash dot dash dash)
    rom_data4[11] = 4'b1100; // Z (dash dash dot dot)
  end
 
  always @(posedge clk) begin
    if (in_morse_bit == 2'b00)
      case (alpha_in)
        E: out1 = rom_data1[0];
        T: out1 = rom_data1[1];
        //default: out = 1'b0;
      endcase
    else if (in_morse_bit == 2'b01)
      case (alpha_in)
        A: out2 = rom_data2[0];
        I: out2 = rom_data2[1];
        M: out2 = rom_data2[2];
        N: out2 = rom_data2[3];
        //default: out = 2'b00;
      endcase
    else if (in_morse_bit == 2'b10)
      case (alpha_in)
        D: out3 = rom_data3[0];
        G: out3 = rom_data3[1];
        K: out3 = rom_data3[2];
        O: out3 = rom_data3[3];
        R: out3 = rom_data3[4];
        S: out3 = rom_data3[5];
        W: out3 = rom_data3[6];
        U: out3 = rom_data3[7];
        //default: out = 3'b000;
      endcase
    else if (in_morse_bit == 2'b11)
      case (alpha_in)
        B: out4 = rom_data4[0];
        C: out4 = rom_data4[1];
        F: out4 = rom_data4[2];
        H: out4 = rom_data4[3];
        J: out4 = rom_data4[4];
        L: out4 = rom_data4[5];
        P: out4 = rom_data4[6];
        Q: out4 = rom_data4[7];
        V: out4 = rom_data4[8];
        X: out4 = rom_data4[9];
        Y: out4 = rom_data4[10];
        Z: out4 = rom_data4[11];
        //default: out = 4'b0000;
      endcase
  end
endmodule
