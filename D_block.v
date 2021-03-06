module D_block(clk,reset,D,Q_ff);

  input clk,reset,D;
  parameter en = 1;
  output Q_ff;
  
  reg Q_ff;
  
  initial Q_ff = 0;
  
  always @(posedge clk) begin
    if(!reset) begin
      if(en)Q_ff <= D;
      else Q_ff <= 0;
    end
  end
    
endmodule
