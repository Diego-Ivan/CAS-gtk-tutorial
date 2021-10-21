public class MyApplication : Gtk.Application {
    public MyApplication () {
        Object (
            application_id: "io.github.diegoivanme.gtk-tutorial",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        print ("Hello World");
    }
}
