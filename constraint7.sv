class random;
  rand bit[3:0]a[];
  constraint co{a.size==10;}
  constraint co1{foreach(a[i]) a[i]==(((i)/2)+1);};
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
