module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    assign sum=x+y;
endmodule

/* Alternative method
module fadd(input a,b,cin,output sum,cout);
    assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(a&cin);
endmodule    
    
module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [3:0] cout;
    fadd inst1(x[0],y[0],1'b0,sum[0],cout[0]);
    fadd inst2(x[1],y[1],cout[0],sum[1],cout[1]);
    fadd inst3(x[2],y[2],cout[1],sum[2],cout[2]);
    fadd inst4(x[3],y[3],cout[2],sum[3],sum[4]);
endmodule
*?
