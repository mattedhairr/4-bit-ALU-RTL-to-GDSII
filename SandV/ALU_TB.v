module ALU_TB;

    reg [3:0] A, B;
    reg [2:0] opcode;
    reg clk;
    wire [3:0] result;
    wire carry_out;

    // Instantiate the ALU
    ALU uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .clk(clk),
        .result(result),
        .carry_out(carry_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10-time unit clock period
    end

    // Test stimulus
    initial begin
        $dumpfile("ALU.vcd");
        $dumpvars(0, ALU_TB);
        $display("Testing Clocked 4-bit ALU...");
        $display("Opcode | A (Dec) | B (Dec) | Result (Dec) | Carry Out");

        // Test addition
        A = 4'b0011; B = 4'b0101; opcode = 3'b000; #10;
        $display("  ADD  | %d       | %d       | %d            | %b", A, B, result, carry_out);

        // Test subtraction
        A = 4'b1001; B = 4'b0011; opcode = 3'b001; #10;
        $display("  SUB  | %d       | %d       | %d            | %b", A, B, result, carry_out);

        // Test multiplication
        A = 4'b0010; B = 4'b0011; opcode = 3'b010; #10;
        $display("  MUL  | %d       | %d       | %d            | %b", A, B, result, carry_out);

        // Test division
        A = 4'b1000; B = 4'b0010; opcode = 3'b011; #10;
        $display("  DIV  | %d       | %d       | %d            | %b", A, B, result, carry_out);

        // Test AND
        A = 4'b1010; B = 4'b1100; opcode = 3'b100; #10;
        $display("  AND  | %d       | %d       | %d            | %b", A, B, result, carry_out);

        // Test OR
        A = 4'b1010; B = 4'b0101; opcode = 3'b101; #10;
        $display("  OR   | %d       | %d       | %d            | %b", A, B, result, carry_out);

        // Test NOT
        A = 4'b1010; opcode = 3'b110; #10;
        $display("  NOT  | %d       | -        | %d            | %b", A, result, carry_out);

        $display("Test complete.");
        $finish;
    end
endmodule

