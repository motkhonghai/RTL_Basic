module mux_4_1 (
    input d0, d1, d2, d3,
    input [1:0] sel,
    output y
);
    assign y = sel[1] ? (sel[0] ? d3 : d2) : (sel[0] ? d1 : d0);
endmodule
