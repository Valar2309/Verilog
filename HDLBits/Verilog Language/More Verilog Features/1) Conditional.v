module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
  
    wire [7:0] intmin1,intmin2;
  
    assign intmin1=(a<b) ? a:b;
    assign intmin2=(c<d) ? c:d;
    assign min=(intmin1<intmin2) ? intmin1:intmin2;
endmodule
