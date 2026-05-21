class ranodm;
  rand int a[];
  constraint co{a.size==10;}
  constraint co1{foreach(a[i]) if(i==0 ||i==1)a[i]==i; else a[i]==a[i-1]+a[i-2];}
  
  function void post_randomize();
    $display("a=%0p",a);
  endfunction
  
endclass

module mod;
  ranodm r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule
