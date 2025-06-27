module tb_MorseCodeEncoder;
  reg clk;
  reg [4:0] alpha_in;
  reg [1:0] num;
  wire out1;
  wire [1:0] out2;
  wire [2:0] out3;
  wire [3:0] out4;
 
  MorseCodeEncoder dut (
    .alpha_in(alpha_in),
    .num(num),
    .clk(clk),
    .out1(out1),
    .out2(out2), 
    .out3(out3), 
    .out4(out4)
  );
 
  // Clock generation
  initial begin
    clk = 1;
    forever #5 clk = ~clk;  // Toggle the clock every 5 time units
  end
 
  // Test case 1
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
initial
    begin
      $dumpfile("dump.vcd");$dumpvars;
    end
endmodule
