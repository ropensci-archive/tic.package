do_package_checks()

if (ci_on_ghactions() && ci_has_env("BUILD_PKGDOWN")) {
  do_pkgdown(branch = NULL)
}
