`timescale 1 ns/ 1ns
module Gompegolomb (m,numberofzeroes,codeword);
  input [7:0] m;
  input [7:0] numberofzeroes;
  output reg [15:0] codeword;
  reg i;
  reg j;
  reg counter;
  reg codewordr;
  always @(numberofzeroes or m) begin
    if (numberofzeroes < m)
      codeword = {1'b0,numberofzeroes};
  else 
    if (numberofzeroes >= m)
      begin
        j = numberofzeroes % m;
        codewordr = {1'b0,j};
        i = numberofzeroes / m;
        for (counter = 0; counter < i; counter = counter +1)
          codewordr = {1'b1,codewordr};
        codeword = codewordr;
      end
  end
endmodule