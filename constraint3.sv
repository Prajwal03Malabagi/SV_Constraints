class random;
  rand bit [7:0]a[4][4];
  constraint co{foreach(a[i,j])if(i==0)a[i][j]%5==0;}
  constraint co1{foreach(a[i,j])if(i==1)a[i][j]%2==0;}
  constraint co2{foreach(a[i,j])if(i==2 && j>0)a[i][j]==a[i][j-1]+1;}
  constraint co3{foreach(a[i,j])if(i==3 && j>0)a[i][j]!=a[i][j-1];}
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
