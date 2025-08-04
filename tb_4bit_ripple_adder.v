`timescale 1ns/1ps

module tb_ripple_carry_adder_4bit;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    ripple_carry_adder_4bit dut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, tb_ripple_carry_adder_4bit);

        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b0101; B = 4'b1010; Cin = 1; #10;
        A = 4'b1001; B = 4'b0110; Cin = 1; #10;

        $finish;
    end

endmodule
