gnome = import ('gnome')
gresources = gnome.compile_resources (
	'gtk_tutorial-resources',
	'gtk_tutorial.gresource.xml',
	c_name: 'gtk_tutorial'
)

project_files = [
	'main.vala',
	'Application.vala',
	'window.vala',
	gresources
]

executable (meson.project_name (), project_files,
	    dependencies: project_deps,
	    install: true
)
