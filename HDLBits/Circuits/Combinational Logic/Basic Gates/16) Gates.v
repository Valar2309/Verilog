module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    always @(*)
        begin
        integer i;
        for(i=2;i>=0;i=i-1)
            out_both[i]=in[i]&in[i+1];
        for(i=3;i>=1;i=i-1)
            out_any[i]=in[i-1]|in[i-2];
        for(i=2;i>=0;i=i-1)
            out_different[i]=in[i]^in[i+1];
        out_different[3]=in[3]^in[0];
        end    
endmodule

/*  Another method
module top_module (
	input [3:0] in,
	output [2:0] out_both,
	output [3:1] out_any,
	output [3:0] out_different
);
assign out_any = in[3:1] | in[2:0];
assign out_both = in[2:0] & in[3:1];
assign out_different = in ^ {in[0], in[3:1]};
endmodule
*/
