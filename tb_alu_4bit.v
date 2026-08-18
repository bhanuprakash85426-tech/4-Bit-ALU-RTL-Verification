 module tb_alu_4bit;

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALU_Sel;

wire [3:0] y;
wire carry;
wire zero;

alu_4bit DUT (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .y(y),
    .carry(carry),
    .zero(zero)
);

initial begin

    A = 4'b0101;
    B = 4'b0011;
    ALU_Sel = 3'b000;
    #10;

    A = 4'b1000;
    B = 4'b0011;
    ALU_Sel = 3'b001;
    #10;

    A = 4'b1010;
    B = 4'b1100;
    ALU_Sel = 3'b010;
    #10;

    A = 4'b1010;
    B = 4'b1100;
    ALU_Sel = 3'b011;
    #10;

    A = 4'b1010;
    B = 4'b1100;
    ALU_Sel = 3'b100;
    #10;

    A = 4'b1010;
    B = 4'b0011;
    ALU_Sel = 3'b101;
    #10;

    A = 4'b1011;
    B = 4'b0000;
    ALU_Sel = 3'b110;
    #10;

    A = 4'b1011;
    B = 4'b0000;
    ALU_Sel = 3'b111;
    #10;

    $finish;

end

initial begin

    $monitor("A=%b B=%b Sel=%b Y=%b Carry=%b Zero=%b",
             A, B, ALU_Sel, y, carry, zero);

end

endmodule 
