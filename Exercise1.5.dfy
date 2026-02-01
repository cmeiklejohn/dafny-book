method Triple1(x: int) returns (r: int) 
    requires x == 2
    ensures r == 3 * x
{
    var y := x / 2;
    r := 6 * y;
}

method Triple2(x: int) returns (r: int) 
    requires x % 4 == 0
    ensures r == 3 * x
{
    var y := x / 2;
    r := 6 * y;
}