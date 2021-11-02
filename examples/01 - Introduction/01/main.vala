#! /usr/env vala -S --pkg gtk4

public static int main (string[] args) {
    var app = new Gtk.Application (
        "io.github.diegoivanme.gtk-tutorial",
        ApplicationFlags.FLAGS_NONE
    );

    app.activate.connect (() => {
        message ("Hello World");
        var window = new Gtk.ApplicationWindow (app);
        window.set_title ("Hello World!");

        var label = new Gtk.Label ("This is my first Gtk window");

        window.set_child (label);
        window.present ();
    });

    return app.run (args);
}
