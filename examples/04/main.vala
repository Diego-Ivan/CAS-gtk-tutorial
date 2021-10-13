#! /usr/env vala -S --pkg gtk+-3.0

public static int main (string[] args) {
    Gtk.init (ref args);

    var window = new Gtk.Window ();
    window.set_title ("Hello World!");
    var box = new Gtk.Box (Gtk.Orientation.VERTICAL, 5);
    var button = new Gtk.Button ();
    var entry = new Gtk.Entry ();
    var label = new Gtk.Label ("Set window title!");

    button.set_label ("Set text as window title");
    button.clicked.connect (() => {
        window.set_title (entry.get_text ());
    });

    entry.changed.connect (() => {
        message (@"Content: $(entry.get_text ())");
    });

    box.pack_start (label, false, false);
    box.pack_start (entry, false, false);
    box.pack_start (button, false, false);

    window.add (box);
    window.destroy.connect (Gtk.main_quit);

    window.show_all ();
    Gtk.main ();

    return 0;
}
