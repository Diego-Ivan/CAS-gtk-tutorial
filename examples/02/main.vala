#! /usr/env vala -S --pkg gtk+-3.0

public static int main (string[] args) {
    Gtk.init (ref args);
    var window = new Gtk.Window ();
    window.set_title ("Hello World!");
    var my_grid = new Gtk.Grid ();

    var button = new Gtk.Button ();
    var my_icon = new Gtk.Image ();
    var my_label = new Gtk.Label ("This is my label");

    button.set_label ("Press me!");
    my_icon.set_from_icon_name ("open-menu-symbolic", Gtk.IconSize.DIALOG);

    my_grid.attach (button, 0, 0);
    my_grid.attach (my_label, 1, 0);
    my_grid.attach (my_icon, 0, 1, 2, 2);

    window.add (my_grid);

    window.show_all ();
    Gtk.main ();

    return 0;
}
