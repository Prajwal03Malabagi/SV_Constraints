class test;
  rand bit[4:0]a[];
  constraint co{a.size==20;}
  constraint c0{foreach(a[i]) if(i<3) a[i]==1;}
  constraint c1{foreach(a[i]) if (i>2)
    if(i<(i+3)) a[i]==a[i-3]+1;}
  function void post_randomize();
    $display("the array =%p",a);
  endfunction
  
endclass
	test t;
module te;
  initial begin
    t=new();
    t.randomize();
  end
endmodule
