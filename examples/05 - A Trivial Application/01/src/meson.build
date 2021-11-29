toad_sources = [
  'main.vala',
  'window.vala',
  'Application.vala',
]

toad_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk4', version: '>= 4.2.1'),
  dependency('libadwaita-1', version: '>= 1.0.0')
]

gnome = import('gnome')

toad_sources += gnome.compile_resources('toad-resources',
  'toad.gresource.xml',
  c_name: 'toad'
)

executable('toad', toad_sources,
  vala_args: '--target-glib=2.50',  dependencies: toad_deps,
  install: true,
)
