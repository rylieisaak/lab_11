module DFlipflop(
    input D,
    input clock,
    output reg Q,
    output notQ
    );
    
    assign notQ = ~Q;
    
    initial begin    
    Q <=0;
    
    end
    
    always@(posedge clock)
        Q <= D;
        
endmodule
