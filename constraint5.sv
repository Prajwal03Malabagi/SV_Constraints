class random;
  rand int a[];
  constraint co{a.size==9;}
  constraint co1{foreach(a[i]){if(i==0)a[i]==7; if(i>0) a[i]==a[i-1]*10+7;}}
  function void post_randomize();
    foreach(a[i])begin
      $display("a=%0p",a);end
  endfunction
endclass

module mod;
  random r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule
