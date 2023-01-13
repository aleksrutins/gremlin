using Gremlin;

public int main(string[] args) {
    
    Intl.setlocale(ALL, "");
    Test.init(ref args);

    Test.add_func("/gremlin/basic_create_object", () => {
        assert_true(h(typeof(Gtk.Box), orientation: Gtk.Orientation.HORIZONTAL) is Gtk.Box);
    });

    return Test.run();
}
