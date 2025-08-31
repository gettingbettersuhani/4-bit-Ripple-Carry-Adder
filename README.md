4-bit Ripple-Carry Adder
A 4-bit ripple-carry adder is a digital circuit that adds two 4-bit binary numbers. It's constructed by cascading four full-adder circuits.

Each full-adder takes three inputs: two bits to be added (A 
i
​
  and B 
i
​
 ) and a carry-in bit (C 
in
​
 ) from the previous stage. It produces two outputs: a sum bit (S 
i
​
 ) and a carry-out bit (C 
out
​
 ).

The "ripple" effect occurs because the carry-out from one full-adder becomes the carry-in for the next one. This creates a delay, as each stage must wait for the carry from the previous stage to be calculated.

Inputs: Two 4-bit numbers, A=A 
3
​
 A 
2
​
 A 
1
​
 A 
0
​
  and B=B 
3
​
 B 
2
​
 B 
1
​
 B 
0
​
 , and an initial carry-in C 
in
​
 .

Outputs: A 4-bit sum, S=S 
3
​
 S 
2
​
 S 
1
​
 S 
0
​
 , and a final carry-out C 
out
​
 .
