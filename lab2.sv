module lab2 (
    output logic x,y,
    input logic a,b,c
    
);
logic l,m,n,o,p;
always_comb begin 
    l=(~c);
    m=(a||b);
    x=(l ^ m);
    n=~(a && b);
    o=(a||b);
    p=(n ^ o);
    y=(p && m);

end
    
endmodule