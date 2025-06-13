module tb_waveform_gen();
    reg en; 
    reg [1:0] pattern;
    wire [7:0] wave;

    waveform_gen dut(
        .en(en),
        .pattern(pattern),
        .wave(wave)
    );

    initial begin 
        $dumpfile("sim.out");
        $dumpvars(0, tb_waveform_gen);

        $display("Time\tPattern\tEN\tWave");
        $display("----\t------\t--\t----");
        pattern = 2'b10; en = 1;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, pattern, en, wave);
        en = 0;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, pattern, en, wave);
        $finish;
    end
endmodule