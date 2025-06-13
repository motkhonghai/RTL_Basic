module comparator_4 (
    input [3:0] d0,    // 4-bit input d0
    input [3:0] d1,    // 4-bit input d1
    output eq,         // d0 == d1
    output gt,         // d0 > d1
    output lt          // d0 < d1
);
    wire [3:0] xnor_d0d1; // XNOR of d0 and d1 for equality
    wire [3:0] eq_chain;  // Cumulative equality chain

    // Equality check: d0 == d1
    assign xnor_d0d1 = ~(d0 ^ d1); // XNOR for each bit
    assign eq_chain[3] = xnor_d0d1[3];
    assign eq_chain[2] = eq_chain[3] & xnor_d0d1[2];
    assign eq_chain[1] = eq_chain[2] & xnor_d0d1[1];
    assign eq_chain[0] = eq_chain[1] & xnor_d0d1[0];
    assign eq = eq_chain[0]; // All bits equal

    // Greater-than: d0 > d1
    assign gt = (d0[3] & ~d1[3]) | 
                (xnor_d0d1[3] & d0[2] & ~d1[2]) | 
                (eq_chain[2] & d0[1] & ~d1[1]) | 
                (eq_chain[1] & d0[0] & ~d1[0]);

    // Less-than: d0 < d1
    assign lt = (~d0[3] & d1[3]) | 
                (xnor_d0d1[3] & ~d0[2] & d1[2]) | 
                (eq_chain[2] & ~d0[1] & d1[1]) | 
                (eq_chain[1] & ~d0[0] & d1[0]);

endmodule
