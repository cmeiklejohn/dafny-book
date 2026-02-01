method Triple(x: int) returns (r: int) {
    var y := 2 * x;
    assert y > x;
    r := y + x;
    assert r > y;
}