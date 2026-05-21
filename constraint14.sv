class random;
  rand bit [7:0]a[];
  bit [15:0]b;
  constraint co{a.size==10;}
  constraint fo{foreach(a[i]) if(i<7){(a[i]+a[i+1]+a[i+2])%2==0;}}
  function void post_randomize();
                foreach(a[i])begin
                  if(i<7)
      b=a[i]+a[i+1]+a[i+2];
                  $display("i=%0d,a=%0p,b=%0d",i,a,b);
                end
  endfunction
endclass

module mod;
  random r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule
