namespace GtkTutorial {
    public class Window : Gtk.ApplicationWindow {
        private Gtk.Label label;

        public Window (Gtk.Application app) {
            Object (application: app);
            label = new Gtk.Label ("My Label");

            set_default_size (400, 600);
            set_title ("My Window");

            add (label);
            show_all ();

            message ("New Meson subdirectories");
        }
    }
}
