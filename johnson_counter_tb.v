module johnson_counter_tb;
reg clk,reset;
wire [7:0] q;
  
  johnson_counter J1(.q(q),
   .clk(clk),
   .reset(reset)
);
initial 
    begin
      $dumpfile("johnson_counter.vcd");
      $dumpvars(0,J1);
    end 
  
  initial
begin
    clk =0;
    reset =1;
    forever #5 clk = ~clk;
end
  
 initial 
   begin
     #2 reset = 0;
   end 
  
initial 
    begin
  #1000 $finish;
    end
endmodule
