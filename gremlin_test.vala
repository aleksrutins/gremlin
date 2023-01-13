using Gremlin;

public int main(string[] args) {
    
    Intl.setlocale(ALL, "");
    Test.init(ref args);

    Test.add_func("/gremlin/sum", () => {
        assert_cmpint(sum(2, 2), EQ, 4);
    });
    Test.add_func("/gremlin/square", () => {
        assert_cmpint(square(3), EQ, 9);
    });

    return Test.run();
}
