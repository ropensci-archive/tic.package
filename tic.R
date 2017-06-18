get_stage("before_install") %>%
  add_step(step_hello_world())

get_stage("install") %>%
  add_step(step_run_code(remotes::install_deps()))

get_stage("script") %>%
  add_step(step_run_code(rcmdcheck::rcmdcheck()))

get_stage("after_success") %>%
  add_step(step_run_code(covr::codecov(quiet = FALSE)))

if (ci()$is_tag() && Sys.getenv("BUILD_PKGDOWN") != "") {
  get_stage("before_deploy") %>%
    add_step(step_install_ssh_keys()) %>%
    add_step(step_add_to_known_hosts("github.com")) %>%
    add_step(step_test_ssh())

  get_stage("deploy") %>%
    add_step(step_build_pkgdown()) %>%
    add_step(step_push_deploy(path = "docs", branch = "gh-pages"))
}
