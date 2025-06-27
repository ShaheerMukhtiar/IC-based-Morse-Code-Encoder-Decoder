// alphaROM.v
module alphaROM (
  output reg [6:0] out,
  input [2:0] in_morse_bit,
  input [3:0] morse_in,
  input clk
);

  reg [5:0] mem [0:25];  // Memory to store alphabet binary codes

  always @(posedge clk) begin
    if (in_morse_bit == 3'b001)
      case (morse_in)
        4'b0000: out = mem[4];   // E
        4'b0001: out = mem[19];  // T
        default: out = 7'b0000000;
      endcase
    else if (in_morse_bit == 3'b010)
      case (morse_in)
        4'b0000: out = mem[8];   // I
        4'b0001: out = mem[0];   // A
        4'b0010: out = mem[13];  // N
        4'b0011: out = mem[12];  // M
        default: out = 7'b0000000;
      endcase
    // Add further cases as needed
  end

endmodule
