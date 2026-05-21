class random;
  rand int a[];
  real b;
  constraint co{a.size==10;}
  constraint co1{foreach(a[i]) a[i] inside{[178:250]};}
  function void post_randomize();
    foreach(a[i])begin
      b=a[i]/100.0;
      $display("b=%0f",b);end
  endfunction
endclass

module mod;
  random r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule
