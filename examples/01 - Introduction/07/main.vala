#! /usr/env vala -S --pkg gtk4

public static int main (string[] args) {
    var app = new Gtk.Application (
        "io.github.diegoivanme.gtk-tutorial",
        ApplicationFlags.FLAGS_NONE
    );

    app.activate.connect (() => {
        var window = new Gtk.ApplicationWindow (app);
        var header_bar = new Gtk.HeaderBar ();
        var stack_switcher = new Gtk.StackSwitcher ();
        var stack = new Gtk.Stack ();

        var label = new Gtk.Label ("My Stack!");
        var image = new Gtk.Image.from_icon_name ("mail-send-symbolic");

        stack.add_titled (label, "label-page", "Page 1");
        stack.add_titled (image, "image-page", "Page 2");
        stack.set_transition_type (Gtk.StackTransitionType.CROSSFADE);

        stack_switcher.set_stack (stack);

        header_bar.set_title_widget (stack_switcher);

        window.set_child (stack);
        window.set_titlebar (header_bar);
        window.set_default_size (600, 400);

        window.present ();
    });

    return app.run (args);
}
