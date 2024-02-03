`timescale 1ns/1ps
module lab2_tb;
 logic a1;
 logic a2;
 logic a3;
 logic x1;
 logic y1;
localparam period = 10;
lab2 dut(
    .a(a1),
    .b(a2),
    .c(a3),
    .x(x1),
    .y(y1)
);
initial begin
    a1=0;a2=0;a3=0;
    #period;
    a1=0;a2=0;a3=1;
    #period;
    a1=0;a2=1;a3=0;
    #period;
    a1=0;a2=1;a3=1;
    #period;
    a1=1;a2=0;a3=0;
    #period;
    a1=1;a2=0;a3=1;
    #period;
    a1=1;a2=1;a3=0;
    #period;
    a1=1;a2=1;a3=1;
    #period;
    $stop;
end
initial begin
    $monitor("a=%b, b=%b, c=%b, x=%b, y=%b",a1,a2,a3,x1,y1);
end
    
endmodule