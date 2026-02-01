function Triple(x: int): int {
    3 * x
}

method Caller() {
    var t := Triple(18);
    assert t < 100;
}   

method Triple2(x : int) returns (r: int) 
    ensures r == 3 * x
{
    var y := 2 * x;
    r := x + y;
    assert r == 3 * x;
}

method Caller2() {
    var t := Triple(18);
    assert t < 100;
}