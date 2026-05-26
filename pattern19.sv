class random;
  rand int a[];
  int n=22;
  constraint co{a.size()==n;}
  constraint co1{foreach(a[i]) a[i]==data_check(i);}
  
  function bit data_check(int i);
    int result=0;
    for(int j=0;j<n;j++)begin
      result=result+(j+1);
      if(result>i)
        return j;
    end
  endfunction
  
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
