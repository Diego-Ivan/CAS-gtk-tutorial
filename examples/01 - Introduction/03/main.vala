#! /usr/env vala -S --pkg gtk4

public static int main (string[] args) {

    var app = new Gtk.Application (
        "io.github.diegoivanme.gtk-tutorial",
        ApplicationFlags.FLAGS_NONE
    );

     app.activate.connect (() => {
        int times_pressed = 0;
        var window = new Gtk.ApplicationWindow (app);
        window.set_title ("Hello World!");

        var my_grid = new Gtk.Grid ();
        var button = new Gtk.Button ();
        var my_icon = new Gtk.Image ();
        var my_label = new Gtk.Label ("This is my label");

        button.set_label ("Press me!");
        my_icon.set_from_icon_name ("open-menu-symbolic");

        button.clicked.connect (() => {
            times_pressed++;
            button.set_label (@"You have pressed me: $times_pressed times!");
        });

        my_grid.attach (button, 0, 0);
        my_grid.attach (my_label, 1, 0);
        my_grid.attach (my_icon, 0, 1, 2, 2);

        window.set_child (my_grid);
        window.present ();
    });


    return app.run (args);
}
