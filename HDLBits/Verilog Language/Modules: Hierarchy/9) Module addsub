module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0] sum_low,sum_up;
    wire carry_low,carry_up;
    
    wire [31:0] b_xor;
    assign b_xor=b^{32{sub}};
    
    add16 inst1(a[15:0],b_xor[15:0],sub,sum_low,carry_low);
    add16 inst2(a[31:16],b_xor[31:16],carry_low,sum_up,carry_up);
    
    assign sum={sum_up,sum_low};
    
endmodule
