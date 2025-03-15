module ALU (
    input [3:0] A, B,
    input [2:0] opcode,
    input clk,
    output reg [3:0] result,
    output reg carry_out
);

    always @(posedge clk) begin
        carry_out = 0; // Reset carry_out
        case (opcode)
            3'b000: {carry_out, result} = A + B;          // Addition
            3'b001: {carry_out, result} = A - B;          // Subtraction
            3'b010: result = A * B;                       // Multiplication
            3'b011: result = (B != 0) ? A / B : 4'b0000;  // Division with zero handling
            3'b100: result = A & B;                       // AND
            3'b101: result = A | B;                       // OR
            3'b110: result = ~A;                          // NOT
            default: result = 4'b0000;                    // Default case
        endcase
    end

endmodule

