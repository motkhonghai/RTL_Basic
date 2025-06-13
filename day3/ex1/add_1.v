module add_1 (
    input a, b, cin, 
    output sum, cout
);

    wire sum1, cout1, cout2;
    wire cout1_or_cout2;
    
    ha_1 ha1 (.a(a), .b(b) .sum(sum1), .cout(cout1));
    ha_1 ha2 (.a(cin), .b(sum), .sum(sum), .cout(cout2));

    or cout1_or_cout2 (cout, cout1, cout2);
endmodule