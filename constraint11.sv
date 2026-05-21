class ranom;
  rand bit[3:0]a[];
  constraint co{a.size==20;foreach(a[i]) a[i]==i/2;}
  function void post_randomize();
    $display("a=%0p",a);
  endfunction
endclass

module mod;
  ranom r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule
  
