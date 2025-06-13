module add_16(
    input [15:0] a, b,
    input cin,
    output [15:0] sum,
    output cout
);          
    wire [15:0]cin_tmp;

    add_1 add1  (.a(a[0]),   .b(b[0]),   .cin(cin),          .sum(sum[0]),   .cout(cin_tmp[0]));
    add_1 add2  (.a(a[1]),   .b(b[1]),   .cin(cin_tmp[0]),   .sum(sum[1]),   .cout(cin_tmp[1]));
    add_1 add3  (.a(a[2]),   .b(b[2]),   .cin(cin_tmp[1]),   .sum(sum[2]),   .cout(cin_tmp[2]));
    add_1 add4  (.a(a[3]),   .b(b[3]),   .cin(cin_tmp[2]),   .sum(sum[3]),   .cout(cin_tmp[3]));
    add_1 add5  (.a(a[4]),   .b(b[4]),   .cin(cin_tmp[3]),   .sum(sum[4]),   .cout(cin_tmp[4]));
    add_1 add6  (.a(a[5]),   .b(b[5]),   .cin(cin_tmp[4]),   .sum(sum[5]),   .cout(cin_tmp[5]));
    add_1 add7  (.a(a[6]),   .b(b[6]),   .cin(cin_tmp[5]),   .sum(sum[6]),   .cout(cin_tmp[6]));
    add_1 add8  (.a(a[7]),   .b(b[7]),   .cin(cin_tmp[6]),   .sum(sum[7]),   .cout(cin_tmp[7]));
    add_1 add9  (.a(a[8]),   .b(b[8]),   .cin(cin_tmp[7]),   .sum(sum[8]),   .cout(cin_tmp[8]));
    add_1 add10 (.a(a[9]),   .b(b[9]),   .cin(cin_tmp[8]),   .sum(sum[9]),   .cout(cin_tmp[9]));
    add_1 add11 (.a(a[10]),  .b(b[10]),  .cin(cin_tmp[9]),   .sum(sum[10]),  .cout(cin_tmp[10]));
    add_1 add12 (.a(a[11]),  .b(b[11]),  .cin(cin_tmp[10]),  .sum(sum[11]),  .cout(cin_tmp[11]));
    add_1 add13 (.a(a[12]),  .b(b[12]),  .cin(cin_tmp[11]),  .sum(sum[12]),  .cout(cin_tmp[12]));
    add_1 add14 (.a(a[13]),  .b(b[13]),  .cin(cin_tmp[12]),  .sum(sum[13]),  .cout(cin_tmp[13]));
    add_1 add15 (.a(a[14]),  .b(b[14]),  .cin(cin_tmp[13]),  .sum(sum[14]),  .cout(cin_tmp[14]));
    add_1 add16 (.a(a[15]),  .b(b[15]),  .cin(cin_tmp[14]),  .sum(sum[15]),  .cout(cin_tmp[15]));

    assign cout = cin_tmp[15];
endmodule 