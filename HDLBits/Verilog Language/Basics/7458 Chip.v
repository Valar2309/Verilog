module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire r,s,t,u;
    assign r=p1a&p1c&p1b;
    assign s=p1f&p1e&p1d;
    
    assign t=p2a&p2b;
    assign u=p2c&p2d;
    
    assign p1y=r|s;
    assign p2y=t|u;
endmodule
