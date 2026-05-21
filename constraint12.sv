class random;
  rand bit[3:0] a;
  rand int val;
  constraint c{a inside{[4:9]};}
  constraint oc{val==data(a);}
  
  function automatic int data(bit[3:0]a);
    int result=1;
    for(int i=1;i<=a;i++)begin
     	result=result*i;
    end
    return result;
  endfunction
  function void post_randomize();
    $display("a=%0d,val=%0d",a,val);
  endfunction
endclass

module mod;
  random r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule

    
