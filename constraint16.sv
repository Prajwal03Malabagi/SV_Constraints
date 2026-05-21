class random;
  rand bit[7:0]var1,var2,var3,var4;
  function void post_randomize();
    $display("var1=%0d,var2=%0d,var3=%0d,var4=%0d",var1,var2,var3,var4);
  endfunction
endclass

module mod;
  random r,r1,r2,r3;
  initial begin
    r=new();
    r1=new();
    r2=new();
    r3=new();/*
    r.randomize();
    r1.randomize(var2);
    r2.randomize(var2,var3);
    r3.randomize(var1,var2,var4);*/
    r.var2.rand_mode(0);
    r.randomize();
  end
endmodule
    
