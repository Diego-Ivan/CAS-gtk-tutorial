# A Trivial Application

In this section, we will develop a more complex application using Gtk and Libadwaita: a Todo list. We will need a set of programs in order to do this, so let's install them:

## Libadwaita

The first set of things that we need is Libadwaita, to use a group of widgets that we require. First, let's clone the project from Gitlab:

```sh
git clone https://gitlab.gnome.org/GNOME/libadwaita
cd libadwaita
```

The next thing that we are going to do is configuring the Meson project. We will set the following things:

* Prefix: To /usr
* gtk_doc: Documentation enabled (true)
* Tests: False
* Examples: true (or you can set this to false and install it by flatpak)

You can do this using the following command:

```sh
meson builddir --prefix=/usr -Dgtk_doc=true -Dtests=false -Dexamples=false
```

You may need libsass. In Fedora, you can install it by using:

```sh
sudo dnf install libsass-devel
```

Now, switch to the builddir and install the library using:

```sh
sudo ninja install
```

To install the examples from flatpak (in case you didn't install them in the system) follow the next instructions

<details>

You will install it from gnome-nightly repo. In case you don't have it enabled, you can through this process

```sh
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
```

Now that you have added the remote, you can install the demo using the following command:

```sh
flatpak install gnome-nightly org.gnome.Adwaita1.Demo
```

</details>

## GNOME Builder

The GNOME Builder IDE is the best IDE to develop GNOME and GTK Applications. In Fedora, you can install it by:

```sh
sudo dnf install gnome-builder
```

If you are in any other Linux distribution (except Arch based distros, these ones have up-to date packages), I highly discourage using the gnome-builder from your distro repos, as it might be not in the best version for the Vala Language Server. Instead, install it from flathub (if you don't have this remote enabled, [follow this instructions](https://flatpak.org/setup/)) using the following command:

```sh
flatpak install flathub org.gnome.Builder
```

By default, this will have access to SDKs and language servers that we will need

## Vala Language Server

The Vala Language Server allows us to have intellisense in our Vala Code, with autocompletion and some other cool features. To install it, you require libvala. In Fedora, you can install it using:

```sh
sudo dnf install libvala-devel
```

Now, clone the Github repository using the following command:

```sh
git clone https://github.com/Prince781/vala-language-server
cd vala-language-server
```

To build it, use the following commands (it will install it to `/usr/bin`):

```sh
meson -Dprefix=/usr build
ninja -C build
sudo ninja -C build install
```
