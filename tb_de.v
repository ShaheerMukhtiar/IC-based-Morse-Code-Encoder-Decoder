module tb_de;

  reg clk;
  reg [3:0] morse_in;
  reg [2:0] num;
  wire [4:0] out;

  // Instantiate the JK flip-flop module
  de my_de (
    .out(out),
    .num(num),
    .morse_in(morse_in),
    .clk(clk)
  );

  // Clock generation
  initial begin
    clk = 1;
    forever #5 clk = ~clk;  // Toggle the clock every 5 time units
  end

  // Test scenario
  initial begin
    // Apply inputs and observe outputs for a few clock cycles
        num = 3'b100; morse_in = 4'b1010;   //C
    #10 num = 3'b010; morse_in = 2'b00; 	//I  
    #10 num = 3'b011; morse_in = 3'b010;	//R  
    #10 num = 3'b100; morse_in = 4'b1010;	//C  
    #10 num = 3'b011; morse_in = 3'b001;	//U  
    #10 num = 3'b010; morse_in = 2'b00; 	//I
    #10 num = 3'b001; morse_in = 1'b1;  	//T  
    #10
    #10 $finish;
  end
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule
