module waveform_gen(
    input en, 
    input [1:0] pattern,
    output  [7:0] wave
);
    assign wave = en ? {4{pattern}} : 8'bz;
endmodule 