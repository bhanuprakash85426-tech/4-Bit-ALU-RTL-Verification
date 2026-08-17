module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALU_Sel,
    output reg [3:0] y,
    output reg carry,
    output reg zero
);

always @(*) begin

    y = 4'b0000;
    carry = 1'b0;

    if (ALU_Sel == 3'b000) begin
        {carry, y} = A + B;
    end

    else if (ALU_Sel == 3'b001) begin
        y = A - B;
    end

    else if (ALU_Sel == 3'b010) begin
        y = A & B;
    end

    else if (ALU_Sel == 3'b011) begin
        y = A | B;
    end

    else if (ALU_Sel == 3'b100) begin
        y = A ^ B;
    end

    else if (ALU_Sel == 3'b101) begin
        y = ~A;
    end

    else if (ALU_Sel == 3'b110) begin
        y = A << 1;
        carry = A[3];
    end

    else if (ALU_Sel == 3'b111) begin
        y = A >> 1;
        carry = A[0];
    end

    if (y == 4'b0000)
        zero = 1'b1;
    else
        zero = 1'b0;

end

endmodule
