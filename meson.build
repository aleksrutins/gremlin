project('gremlin', ['c', 'vala'],
  version : '0.1')

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
]

# These arguments are only used to build the shared library
# not the executables that use the library.
shlib = shared_library('foo', 'gremlin.vala',
               dependencies: dependencies,
               install: true,
               install_dir: [true, true, true])

test_exe = executable('gremlin_test', 'gremlin_test.vala', dependencies : dependencies,
  link_with : shlib)
test('gremlin', test_exe, 
  env: [
    'G_TEST_SRCDIR=@0@'.format(meson.current_source_dir()),
    'G_TEST_BUILDDIR=@0@'.format(meson.current_build_dir()),
  ],
  protocol: 'tap')

# Make this library usable as a Meson subproject.
gremlin_dep = declare_dependency(
  include_directories: include_directories('.'),
  link_with : shlib)
