class random;
  rand bit [3:0]a[];
  constraint co{a.size==10;}
  constraint co1{foreach(a[i]) if(i<5) a[i]==9-(i*2);}
  constraint co2{foreach(a[i]) if(i>4) a[i]==a[i-5]-1;}
  
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
