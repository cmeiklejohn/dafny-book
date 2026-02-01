// (a) Specify the intended postcondition of this method. 
// (b) Write a method that calls MaxSum with the input arguments 1928 and 1. 
    // Follow the call with an assertion about what you expect the two out-parameters to be. 
    // If the verifier complains that the assertion may be violated, go back to (a) to improve the specification. 
    // This is a useful way to “test the specification”. 
    // Note, you're testing the specification by using the verifier, 
    // not by running the program. 
// (c) Write an implementation for MaxSum.”

method MaxSum(x: int, y: int) returns (s: int, m: int) 
    ensures m == x || m == y
    ensures s == x + y 
    ensures m == if x < y then y else x 
{
    s := x + y;
    if (x < y) {
        m := y;
    } else {
        m := x;
    }
}

method Caller() {
    var s, m := MaxSum(1928, 1);
    assert s == 1929;
    assert m == 1928;
}
