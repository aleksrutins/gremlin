test('gremlin', 
  executable('gremlin_test', 'gremlin_test.vala', dependencies : dependencies + [gremlin_dep]), 
  env: [
    'G_TEST_SRCDIR=@0@'.format(meson.current_source_dir()),
    'G_TEST_BUILDDIR=@0@'.format(meson.current_build_dir()),
  ],
  protocol: 'tap')