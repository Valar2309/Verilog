module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum_low,sum_high;
    wire carry_low,carry_high;
    
    add16 inst1(a[15:0],b[15:0],1'b0,sum_low,carry_low);
    add16 inst2(a[31:16],b[31:16],carry_low,sum_high,carry_high);
    assign sum={sum_high,sum_low};

endmodule
