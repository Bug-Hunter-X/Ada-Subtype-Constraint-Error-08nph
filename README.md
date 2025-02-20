# Ada Subtype Constraint Error
This example demonstrates a subtle error in Ada programming related to subtype range checks.  The program intends to increment a variable of a subtype, but an operation outside the subtype range is performed after a conditional check, leading to a `Constraint_Error` at runtime.

The `bug.ada` file contains the erroneous code.  The `bugSolution.ada` file demonstrates how to correct the problem to avoid the error.

The bug is that the check for whether `X` exceeds 10 is bypassed if `X` is not initially greater than 10, and then it continues to add to it and tries to assign a value outside of the subtype's range.