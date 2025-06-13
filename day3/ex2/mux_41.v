module mux_41(
    input   [1:0] sel,
    input   [7:0] d0, d1, d2, d3,
    output  [7:0] q
);
    // data flow
    assign q = (sel[1]) ? (sel[0] ? d3 : d2) : (sel[0] ? d1 : d0);

/*
    // structural 


    // behaviral 
    always @(*) begin 
        case(sel) 
            2'b00 : q = d0;
            2'b01 : q = d1;
            2'b10 : q = d2;
            2'b11 : q = d3;
        endcase
    end
*/
endmodule