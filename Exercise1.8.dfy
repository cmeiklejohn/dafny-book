method ReconstructFromMaxSum(s: int, m: int) returns (x: int, y: int) 
    ensures s == x + y
    ensures x == m && y == s - m
{
    x := m;
    y := s - m;
}

method TestMaxSum(x: int, y: int) {
    var s, m := MaxSum(x, y);
    var xx, yy := ReconstructFromMaxSum(s, m);
    assert (xx == x && yy == y) || (xx == y && yy == x);
}

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