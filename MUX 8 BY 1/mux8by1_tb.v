module tb_mux8x1;

reg  [7:0] data_in;
reg  [2:0] sel;
wire out;

mux8x1 uut (
    .data_in(data_in),
    .sel(sel),
    .out(out)
);

initial begin
    data_in = 8'b10101010;

    for (sel = 0; sel < 8; sel = sel + 1) begin
        #10;
        $display("sel=%b -> out=%b", sel, out);
    end

    $finish;
end

endmodule