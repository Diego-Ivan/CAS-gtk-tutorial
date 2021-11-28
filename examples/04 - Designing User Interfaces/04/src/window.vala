namespace GtkTutorial {
    [GtkTemplate (ui="/io/github/diegoivanme/gtk-tutorial/window.ui")]
    public class Window : Gtk.ApplicationWindow {
        public Window (Gtk.Application app) {
            Object (application: app);

            var css_provider = new Gtk.CssProvider ();
            css_provider.load_from_resource ("/io/github/diegoivanme/gtk-tutorial/style.css");

            Gtk.StyleContext.add_provider_for_display (
                get_display (),
                css_provider,
                Gtk.STYLE_PROVIDER_PRIORITY_USER
            );
        }
    }
}
