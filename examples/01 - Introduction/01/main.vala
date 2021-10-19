#! /usr/env vala -S --pkg gtk+-3.0

public static int main (string[] args) {
    Gtk.init (ref args);
    var window = new Gtk.Window ();
    window.set_title ("Hello World!");

    var label = new Gtk.Label ("This is my first Gtk window");

    window.add (label);
    window.show_all ();
    Gtk.main ();

    return 0;
}
