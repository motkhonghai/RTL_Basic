module concat_shift(
  input [3:0] a,b,
  output [7:0] out
);
  assign out = {a,b} << 2;
endmodule
