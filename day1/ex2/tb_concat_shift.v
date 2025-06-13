module tb_concat_shift();
  reg [3:0] a,b;
  wire [7:0] out;

  concat_shift dut (
    .a(a),
    .b(b),
    .out(out)
  );

  initial begin
    // tao dau ra
    $dumpfile("sim.out");
    $dumpvars(0,tb_concat_shift);
    // hiển thị
    $display("Time\t a\t b\t out\t");
    a = 4'b0; b = 4'b0;
    #10;
    $display("%0t\t %b\t %b\t", $time, a, b, out);
    a = 4'b1010; b = 4'b0101;
    #10;
    $display("%0t\t %b\t %b\t", $time, a, b, out);
    $finish;
  end

endmodule
