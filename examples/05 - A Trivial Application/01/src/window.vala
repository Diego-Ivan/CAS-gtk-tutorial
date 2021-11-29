
namespace Toad {
	[GtkTemplate (ui = "/io/github/diegoivanme/toad/window.ui")]
	public class Window : Adw.ApplicationWindow {

		public Window (Gtk.Application app) {
			Object (application: app);
		}
	}
}
