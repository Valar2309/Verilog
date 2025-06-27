module full_adder(
    input a,b,cin,
    output sum,cout);
    assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(a&cin);
endmodule    

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    genvar i;
    generate
        for(i=0;i<100;i=i+1)
            begin:adder_loop
            if(i==0)
                begin
                    full_adder fa(a[i],b[i],cin,sum[i],cout[i]);
                end  
            else
                begin
                    full_adder fa(a[i],b[i],cout[i-1],sum[i],cout[i]);
                end    
            end   
    endgenerate   
endmodule
