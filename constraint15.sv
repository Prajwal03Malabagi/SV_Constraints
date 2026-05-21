class random;
  rand bit[7:0]a[3][3];
  constraint co{foreach(a[i]) foreach(a[j]) if(i>0)a[i][j]==a[i-1][j]+4;}
  constraint fco{foreach(a[i])foreach(a[j])if(j>0)a[i][j]==a[i][j-1]+2;}
  
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
