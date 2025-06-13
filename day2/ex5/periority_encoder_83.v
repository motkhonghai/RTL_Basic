module priority_encoder_83(
  input [7:0] in, 
  output [2:0] out,
  output valid
);
  assign out[2] = in[7] || in[6] || in[5] || in[4];
  assign out[1] = in[7] || in[6] || in[3] || in[2];
  assign out[0] = in[7] || in[5] || in[3] || in[1];

  assign valid =   (in == 8'b00000001 || in == 8'b00000010 ||
                    in == 8'b00000100 || in == 8'b00001000 ||
                    in == 8'b00010000 || in == 8'b00100000 ||
                    in == 8'b01000000 || in == 8'b10000000);
endmodule
