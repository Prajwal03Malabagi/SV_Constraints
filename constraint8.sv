class random;
  rand int a[];
  constraint co{a.size()==10;}
  constraint co1{foreach(a[i]) {if(i==0)a[i]==5; if(i==1)a[i]==-10; }}
    constraint co2{foreach(a[i]){if(i>1 && i %2==0) a[i]==a[i-2]+10; if(i>1 && i %2==1) a[i]==a[i-2]-10;}}
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
