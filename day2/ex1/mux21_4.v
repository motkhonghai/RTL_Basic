module mux21_4 (
    input [3:0] d0,d1,
    intput sel,
    output [3:0] out
);
    assign out = sel ? d0 : d1;
endmodule
