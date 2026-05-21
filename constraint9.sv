class random;
  rand bit[3:0] a[];
  constraint co{a.size==10; foreach(a[i]) a[i] inside{[0:9]};}
  constraint co1{foreach(a[i]) {if(i<5) a[i]==i+5; if(i==5)a[i]==a[i-1]; if(i>5) a[i]==a[i-1]-1;}}
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
