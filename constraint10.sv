class random;
  rand int a[2][4];
  constraint c1{foreach(a[i,j]) a[i][j] inside{[0:40]};}
  constraint co{foreach(a[i,j]) {if(i==0)a[i][j]%2==0&& a[i][j]%4==0;
                                 if(i==1) a[i][j]%2==1&&a[i][j]%3==0;}}
    function void post_randomize();
                $display("array=%0p",a);
                endfunction
                endclass
                
                module mod;
                  random r;
                  initial begin
                    r=new();
                    r.randomize();
                  end
                endmodule
