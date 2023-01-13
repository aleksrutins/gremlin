using Gee;
namespace Gremlin {
    public class ChildDescription {
        public Object child;
        public string? type;
    }
    public Object h(Type widget, ...) {
        var args = va_list();
        var prop_names = new ArrayList<string>();
        Value[] prop_values = {};
        var children = new ArrayList<ChildDescription>();
        Object? arg;
        while((arg = args.arg()) != null) {
            if(arg is string) {
                Object? value = args.arg();
                if(value != null) {
                    prop_names.add((string)arg);
                    var val = GLib.Value(typeof(Object));
                    val = value;
                    prop_values += val;
                }
            } else if(arg is ChildDescription) {
                children.add((ChildDescription)arg);
            }
        }
        var result = Object.new_with_properties(widget, prop_names.to_array(), prop_values);
        if(widget.is_a(typeof(Gtk.Buildable))) {
            foreach (var child in children) ((Gtk.Buildable)result).add_child(new Gtk.Builder(), child.child, child.type);
        }
        return result;
    }
}