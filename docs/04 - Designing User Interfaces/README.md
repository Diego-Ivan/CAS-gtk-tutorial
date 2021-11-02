# User Interfaces for GTK

In this chapter, we will learn how to use XML/.ui files to create user interfaces for GtkWidgets, as well as how to use them in our projects.

Why are we learning this? Well, it is the standard in GNOME and the recommended way to mantain User Interfaces for GTK. As an example, let's compare this code:

```vala
namespace GtkTutorial {
    public class Window : Gtk.ApplicationWindow {
        public Window (Gtk.Application app) {
            Object (application: app);

            set_default_size (400, 600);
            set_title ("My Window");

			var box = new Gtk.Box (Gtk.Orientation.VERTICAL);
			var switcher1 = new Gtk.Switch ();
			var switcher2 = new Gtk.Switch ();
			var label = new Gtk.Label ("My Label");
			box.set_spacing (5);
			box.set_halign (Gtk.Align.CENTER);

			box.append (label);
			box.append (switcher1);
			box.append (switcher2);
			set_child (box);
        }
    }
}
```

Which may look simple, but this starts being a problem when the app grows. UI Files were used by GTK in order to create a better and more maintainable UI in which you can see more clearly which widget parents others, and see the properties of each widget more expressively, like this:

```xml
<template class="GtkTutorialWindow" parent="GtkWindow">
	<property name="default-width">400</property>
	<property name="default-height">400</property>
	<property name="title">My Window</property>
	
	<child>
		<object class="GtkBox">
			<property name="halign">center</property>
			<property name="spacing">5</property>

			<child>
				<object class="GtkLabel" id="label">
					<property name="title">My Label</property>
				</object>
			</child>

			<child>
				<object class="GtkSwitch"/>
			</child>
			
			<child>
				<object class="GtkSwitch"/>
			</child>

		</object>
	</child>
</template>
```

We will also learn how to use GResources in order to install this UI files and use them in our Project