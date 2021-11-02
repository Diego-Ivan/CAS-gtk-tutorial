project ('gtk-tutorial', ['c', 'vala'])

project_files = [
	'main.vala',
	'Application.vala'
]

project_deps = [
	dependency ('gio-2.0', version: '>=2.50'),
	dependency ('gtk4', version: '>=4.2.1')
]

executable (meson.project_name (), project_files,
	    dependencies: project_deps,
	    install: true
)
