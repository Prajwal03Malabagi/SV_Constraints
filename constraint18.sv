

class act;
	rand bit[4:0]a[];
		
	constraint con{a.size==10;}
	constraint con1{foreach(a[i]) if(i==0)a[i]==2;}
  constraint con2{foreach(a[i]) if(i>0) {if(i%2==1) a[i]==a[i-1]+1; else a[i]==a[i-1]+2;}}
	
	function void post_randomize();
		$display(" the array=%p",a);
	endfunction
endclass

module test;
	initial begin
		act a1;
      a1=new();
		a1.randomize();
	end
endmodule
