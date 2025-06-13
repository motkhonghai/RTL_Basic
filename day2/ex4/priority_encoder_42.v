module priority_encoder_42(
    input [3:0] in,
    input en,
    output [1:0] out,
    output valid
);

    assign out[1] = en & (in[3] | in[2]);
    assign out[0] = en & (in[3] | in[1]);
    assign valid = en & (|in);  // (|in) = n[3] | in[2] | in[1] | in[0]

endmodule