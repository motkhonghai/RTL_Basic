module mux41_4(
    input [3:0] d0, d1, d2, d3,
    input [1:0] sel,
    output [3:0] out
);
    assign out = (sel[0]) ? (sel[1] ? d3 : d2) : (sel[1] ? d1 : d0);
endmodule