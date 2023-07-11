module sequence_detector_test;
reg x,clk,reset;
wire z;



sequence_detector SEQ (.x(x),.clk(clk),.reset(reset),.z(z));
initial begin
	
	//$monitor("input=%b , output=%b",x,z);
	clk=0; reset=1;
	#15 reset=0;
end
always #5 clk=~clk;

initial begin
	#10 x=0; #10 x=0; #10 x=1; #10 x=1; 
	#10 x=0; #10 x=1; #10 x=0; #10 x=1;
	#10 x=0; #10 x=1; #10 x=1; #10 x=0;
	#10 $finish;
end
endmodule
