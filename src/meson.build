dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk4'),
    dependency('gee-0.8')
]

# These arguments are only used to build the shared library
# not the executables that use the library.
shlib = shared_library('gremlin', 
    [
        'gremlin.vala',
    ],
    dependencies: dependencies,
    install: true,
    install_dir: [true, true, true])

# Make this library usable as a Meson subproject.
gremlin_dep = declare_dependency(
  include_directories: include_directories('.'),
  link_with : shlib)