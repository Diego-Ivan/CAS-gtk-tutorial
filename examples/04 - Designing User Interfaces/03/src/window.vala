namespace GtkTutorial {
    [GtkTemplate (ui="/io/github/diegoivanme/gtk-tutorial/window.ui")]
    public class Window : Gtk.ApplicationWindow {
        public Window (Gtk.Application app) {
            Object (application: app);
        }
    }
}
