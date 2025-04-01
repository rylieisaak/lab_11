module top(
input [3:0]sw,
input btnC,
output [5:0]led
    );
    
DFlipflop Dff (

.D(sw[0]),
.clock(btnC),
.Q(led[0]),
.notQ(led[1])
);

JKflipflop Jff (
.J(sw[1]),
.K(sw[2]),
.clock(btnC),
.Q(led[2]),
.notQ(led[3])
);

TFlipFlop tff (
.T(sw[3]),
.clock(btnC),
.Q(led[4]),
.notQ(led[5])
);

endmodule