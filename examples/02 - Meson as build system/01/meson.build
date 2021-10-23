project ('gtk-tutorial', ['c', 'vala'])

project_files = [
	'main.vala',
	'Application.vala'
]

project_deps = [
	dependency ('gio-2.0', version: '>=2.50'),
	dependency ('gtk+-3.0', version: '>=3.24')
]

executable (meson.project_name (), project_files,
	    dependencies: project_deps,
	    install: true
)
