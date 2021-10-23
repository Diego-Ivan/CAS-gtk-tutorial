#! /usr/env vala -S --pkg gtk+-3.0

public static int main (string[] args) {
    Gtk.init (ref args);

    var window = new Gtk.Window ();
    var header_bar = new Gtk.HeaderBar ();
    var box = new Gtk.Box (Gtk.Orientation.VERTICAL, 5);
    header_bar.set_title ("My App");
    header_bar.set_show_close_button (true);

    var button = new Gtk.Button.with_label ("My Button");
    button.get_style_context ().add_class ("suggested-action");

    header_bar.pack_start (button);

    window.set_titlebar (header_bar);
    window.set_default_size (600, 400);

    var my_switcher_one = new Gtk.Switch ();
    var my_switcher_two = new Gtk.Switch ();

    button.clicked.connect (() => {
        message (@"Switcher one is: $(my_switcher_one.active.to_string ())");
        message (@"Switcher two is: $(my_switcher_two.active.to_string ())");
    });

    my_switcher_one.bind_property (
        "active",
        my_switcher_two,
        "sensitive",
        BindingFlags.INVERT_BOOLEAN
    );

    my_switcher_one.set_active (true);

    box.pack_start (my_switcher_one, false, false);
    box.pack_start (my_switcher_two, false, false);

    box.set_halign (Gtk.Align.CENTER);

    window.add (box);
    window.destroy.connect (Gtk.main_quit);

    window.show_all ();
    Gtk.main ();

    return 0;
}
