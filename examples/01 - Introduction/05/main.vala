#! /usr/env vala -S --pkg gtk+-3.0

public static int main (string[] args) {
    Gtk.init (ref args);

    var window = new Gtk.Window ();
    var header_bar = new Gtk.HeaderBar ();
    header_bar.set_title ("My App");
    header_bar.set_show_close_button (true);

    var button = new Gtk.Button.with_label ("My Button");
    button.get_style_context ().add_class ("suggested-action");
    header_bar.pack_start (button);

    window.set_titlebar (header_bar);
    window.set_default_size (600, 400);
    window.destroy.connect (Gtk.main_quit);

    window.show_all ();
    Gtk.main ();

    return 0;
}
