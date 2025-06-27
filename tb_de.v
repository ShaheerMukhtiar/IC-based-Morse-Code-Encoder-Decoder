// tb_de.v
module tb_de;

  reg clk;
  reg [3:0] morse_in;
  reg [2:0] num;
  wire [4:0] out;

  de my_de (
    .out(out),
    .num(num),
    .morse_in(morse_in),
    .clk(clk)
  );

  initial begin
    clk = 1;
    forever #5 clk = ~clk;  // Toggle every 5 time units
  end

  initial begin
    num = 3'b100; morse_in = 4'b1010; // Example input for 'C'
    #10;
    $finish;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

endmodule
