// Rule 90 is a one-dimensional cellular automaton with interesting properties. The rules are simple. There is a one-dimensional array of cells (on or off). At each time step, the next state of each cell is the XOR of the cell's two current neighbours:
// Left | Center | Right | Center's next state
// 1 | 1 | 1 | 0
// 1 | 1 | 0 | 1
// 1 | 0 | 1 | 0
// 1 | 0 | 0 | 1
// 0 | 1 | 1 | 1
// 0 | 1 | 0 | 0 
// 0 | 0 | 1 | 1
// 0 | 0 | 0 | 0
// In this circuit, create a 512-cell system (q[511:0]), and advance by one time step each clock cycle. The load input indicates the state of the system should be loaded with data[511:0]. Assume the boundaries (q[-1] and q[512]) are both zero (off).

module top_module(
	input clk,
	input load,
	input [511:0] data,
	output reg [511:0] q);
