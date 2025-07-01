module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [2:0] cot;
    bcd_fadd inst1(a[3:0],b[3:0],cin,cot[0],sum[3:0]);
    bcd_fadd inst2(a[7:4],b[7:4],cot[0],cot[1],sum[7:4]);
    bcd_fadd inst3(a[11:8],b[11:8],cot[1],cot[2],sum[11:8]);
    bcd_fadd inst4(a[15:12],b[15:12],cot[2],cout,sum[15:12]);
endmodule
