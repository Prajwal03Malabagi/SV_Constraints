class random;
  rand bit[31:0]a[];
  constraint co{a.size==10;}
  constraint co1{foreach(a[i]) $countones(a[i])==12;}
  constraint co2{foreach(a[i]) if(i>0) a[i]!=a[i-1];}
  
  function void post_randomize();
    $display("a=%0p",a);
  endfunction
endclass

module mod;
  random r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule
