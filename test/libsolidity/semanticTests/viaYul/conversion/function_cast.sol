contract C {
    function f(uint x) public pure returns (uint) {
        return 2 * x;
    }
    function g() public view returns (function (uint) external returns (uint)) {
        return this.f;
    }
    function h(uint x) public returns (uint) {
        return this.g()(x) + 1;
    }
}
// ----
// f(uint256): 2 -> 4
// h(uint256): 2 -> 5
