#! /usr/env vala -S --pkg gtk4

public static int main (string[] args) {

    var app = new Gtk.Application (
        "io.github.diegoivanme.gtk-tutorial",
        ApplicationFlags.FLAGS_NONE
    );

    app.activate.connect (() => {
        var window = new Gtk.ApplicationWindow (app);
        var header_bar = new Gtk.HeaderBar ();
        var box = new Gtk.Box (Gtk.Orientation.VERTICAL, 5);
        window.set_title ("My App");
        header_bar.set_show_title_buttons (true);

        var button = new Gtk.Button.with_label ("My Button");
        button.add_css_class ("suggested-action");

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

        box.append (my_switcher_one);
        box.append (my_switcher_two);

        box.set_halign (Gtk.Align.CENTER);

        window.set_child (box);
        window.present ();
    });

    return app.run (args);
}
