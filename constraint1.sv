class random;
  rand bit[7:0] a[];
  constraint co{a.size==10;}
  constraint co1{foreach(a[i]) if(i%2==0) a[i]==1;}
  constraint co2{foreach(a[i]) if(i%2==1) a[i]==0;}
  
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
