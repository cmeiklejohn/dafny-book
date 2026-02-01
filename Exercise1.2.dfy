method Triple(x: int) returns (r: int)
  requires x > 0
{
    var y := 2 * x;
    assert y > x;
    r := y + x;
    assert r > y;
}

method Triple2(x: int) returns (r: int) {
    if (x == 0) {
        r := 0;
    } else {
        var y := 2 * x;
        assert y != 0;
        r := y + x;
        assert r == 3 * x;
    }
}