#! /usr/env vala -S --pkg gtk4

public static int main (string[] args) {

    var app = new Gtk.Application (
        "io.github.diegoivanme.gtk-tutorial",
        ApplicationFlags.FLAGS_NONE
    );

    app.activate.connect (() => {
        var window = new Gtk.ApplicationWindow (app);
        var header_bar = new Gtk.HeaderBar ();
        window.set_title ("My App");

        var button = new Gtk.Button.with_label ("My Button");
        button.add_css_class ("suggested-action");
        header_bar.pack_start (button);

        window.set_titlebar (header_bar);
        window.set_default_size (600, 400);

        window.present ();
    });

    return app.run (args);
}
