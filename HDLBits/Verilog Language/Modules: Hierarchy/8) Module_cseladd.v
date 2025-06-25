module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum_low,sum_up1,sum_up0;
    wire carry_low,carry_up1,carry_up0;
    
    add16 low(a[15:0],b[15:0],1'b0,sum_low,carry_low);
    add16 up1(a[31:16],b[31:16],1'b1,sum_up1,carry_up1);
    add16 up0(a[31:16],b[31:16],1'b0,sum_up0,carry_up0);
    
    assign sum[15:0]=sum_low;
    assign sum[31:16]=carry_low?sum_up1:sum_up0;

endmodule
