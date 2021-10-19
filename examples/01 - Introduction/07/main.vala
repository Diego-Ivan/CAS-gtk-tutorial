#! /usr/env vala -S --pkg gtk+-3.0

public static int main (string[] args) {
    Gtk.init (ref args);

    var window = new Gtk.Window ();
    var header_bar = new Gtk.HeaderBar ();
    var stack_switcher = new Gtk.StackSwitcher ();
    var stack = new Gtk.Stack ();

    var label = new Gtk.Label ("My Stack!");
    var image = new Gtk.Image.from_icon_name ("mail-send-symbolic", Gtk.IconSize.DIALOG);

    stack.add_titled (label, "label-page", "Page 1");
    stack.add_titled (image, "image-page", "Page 2");
    stack.set_transition_type (Gtk.StackTransitionType.CROSSFADE);

    stack_switcher.set_stack (stack);

    header_bar.set_custom_title (stack_switcher);
    header_bar.set_show_close_button (true);

    window.add (stack);
    window.set_titlebar (header_bar);
    window.set_default_size (600, 400);

    window.destroy.connect (Gtk.main_quit);

    window.show_all ();
    Gtk.main ();

    return 0;
}
