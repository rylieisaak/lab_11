module JKflipflop(
input J, K, 
input clock,
output Q, y1, y2, y3, notQ 
);

assign y1 = J & notQ;
assign y2 = ~K & Q;
assign y3 = y1 | y2;

DFlipflop dff (
.D(y3),
.clock(clock),
.Q(Q),
.notQ(notQ)
);

endmodule
