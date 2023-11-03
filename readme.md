# Comparison of Carry Select Adder and Square Root Carry Select Adder

In this project, I made a comparison between Carry Select Adder and Square Root Carry Select Adder. So the project directory contains:
- Implementation of 64-bit Carry Select Adder
- Implementation of 64-bit Square Root Carry Select Adder

The Carry Select Adder (CSLA) is typically composed of ripple-carry adders and multiplexers. The idea of the basic structure of the implementation of CSLA in this project is building a 64-bit CSLA from a 4-bit adder module 16 times (for a total of 64 bits). So, the structure involves dividing the input bits into 16 sets and processing them in parallel. For each 4-bit adder, CSLA will contain two 4-bit Ripple Carry Adder (RCA). A multiplexer is then used to select the correct set of results based on the carry-in signal. This structure helps reduce carry propagation delay, making the CSLA faster than a simple RCA.
