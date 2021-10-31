#! /usr/env vala -S --pkg gtk4

public static int main (string[] args) {
    var app = new Gtk.Application (
        "io.github.diegoivanme.gtk-tutorial",
        ApplicationFlags.FLAGS_NONE
    );

    app.activate.connect (() => {
        var window = new Gtk.ApplicationWindow (app);
        window.set_title ("My Data");

        var grid = new Gtk.Grid ();
        var label_name = new Gtk.Label ("Write your name: ");
        var entry_name = new Gtk.Entry ();

        var label_age = new Gtk.Label ("Set your age");
        var adjustment = new Gtk.Adjustment (0, 0, 117, 1, 5, 10);
        var spin_button = new Gtk.SpinButton (adjustment, 2, 0);
        var scale = new Gtk.Scale (Gtk.Orientation.HORIZONTAL, adjustment);

        // We can also create buttons with labels!
        var button = new Gtk.Button.with_label ("Done!");
        button.clicked.connect ( () => {
            var name = entry_name.get_text ();

            if (name == "") {
                critical ("Name entry is empty!");
                return;
            }

            var age = spin_button.get_value ();
            message (@"My name is $name and I'm $age");
        });

        grid.attach (label_name, 0, 0);
        grid.attach (entry_name, 1, 0);

        // Here were are using 2 width to use all the space available :P
        grid.attach (label_age, 0, 1, 2);
        grid.attach (spin_button, 0, 2);
        grid.attach (scale, 1, 2);
        grid.attach (button, 0, 3);

        window.set_child (grid);
        window.present ();
    });

    return app.run (args);
}
