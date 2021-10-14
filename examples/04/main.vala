#! /usr/env vala -S --pkg gtk+-3.0

public static int main (string[] args) {
    Gtk.init (ref args);

    var window = new Gtk.Window ();
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

    window.add (grid);
    window.destroy.connect (Gtk.main_quit);

    window.show_all ();
    Gtk.main ();

    return 0;
}
