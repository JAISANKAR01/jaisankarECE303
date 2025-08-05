module mux8x1 (
    input  wire [7:0] data_in,   // 8 input lines: data_in[0] to data_in[7]
    input  wire [2:0] sel,       // 3-bit select input
    output reg        out       // Output
);

always @(*) begin
    case (sel)
        3'b000: out = data_in[0];
        3'b001: out = data_in[1];
        3'b010: out = data_in[2];
        3'b011: out = data_in[3];
        3'b100: out = data_in[4];
        3'b101: out = data_in[5];
        3'b110: out = data_in[6];
        3'b111: out = data_in[7];
        default: out = 1'b0;     // default case (optional)
    endcase
end

endmodule