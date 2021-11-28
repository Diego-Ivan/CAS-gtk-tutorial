namespace GtkTutorial {
    public class Application : Gtk.Application {
        private Window main_window;
        public Application () {
            Object (
                application_id: "io.github.diegoivanme.gtk-tutorial",
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        protected override void activate () {
            if (main_window == null)
                main_window = new Window (this);

            main_window.present ();
        }
    }
}
