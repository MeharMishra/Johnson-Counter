module johnson_counter(clk,reset,q);
  input clk,reset;
  output reg [7:0] q;
  reg [7:0] temp;
  always @(posedge clk, posedge reset)
    begin
      if(reset)
        temp<=8'b0;
      else
        temp<={temp[6:0],~temp[7]};
    end
  assign q = temp;
endmodule
        
