module TFlipFlop(
input T,
input clock,
output Q, notQ
);


JKflipflop jkff (
.J(T),
.K(T),
.clock(clock),
.Q(Q),
.notQ(notQ)
);   

endmodule
