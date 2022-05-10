# tic.package

<!-- badges: start -->
[![R CMD Check via {tic}](https://img.shields.io/github/workflow/status/ropenscilabs/tic.package/R%20CMD%20Check%20via%20%7Btic%7D?logo=github&label=R%20CMD%20Check%20via%20{tic}&style=flat-square)](https://github.com/ropenscilabs/tic.package/actions)
[![Travis build status](https://img.shields.io/travis/ropenscilabs/tic.package/master?logo=travis&style=flat-square&label=Linux)](https://travis-ci.com/ropenscilabs/tic.package)
[![CircleCI build status](https://img.shields.io/circleci/build/gh/ropenscilabs/tic.package/master?label=Linux&logo=circle&logoColor=green&style=flat-square)](https://circleci.com/gh/ropenscilabs/tic.package)
[![AppVeyor build status](https://img.shields.io/appveyor/ci/ropenscilabs/tic-package?label=Windows&logo=appveyor&style=flat-square)](https://ci.appveyor.com/project/ropenscilabs/tic-package)
<!-- badges: end -->

A minimal example package with _pkgdown_ documentation created and uploaded by [_tic_](https://github.com/ropenscilabs/tic) (the _pkgdown_ documentation is written to, and served from, the `docs` directory of the `master` branch.).
_tic_ is an R package for CI-agnostic workflow definitions for various R projects. 
See its [documentation](https://ropenscilabs.github.io/tic/) for more information.

## Set up an operational fork of this repository

If you want to experiment with _travis_ and _tic_ for a R package, you can fork it.

1. Use `usethis::create_from_github()` to automatically create a fork of this repo.
    If you use RStudio, a new RStudio project will open. 
    You may need to set up your SSH credentials first. 
    See [this guide](http://happygitwithr.com/ssh-keys.html) if you're having problems. 
    (It's definitely worth getting this function running as it saves you a lot of time in the future!) 
    Alternatively, fork this repo on Github and then create a new R Project within RStudio (File -> New Project -> Version Control -> Github). 
1. Run `tic::use_tic()` to set up all requirements needed for the CI integration of your package.

## Create a package from scratch

This is the detailed way going step by step from the bottom up.
Looking here can be useful if you already have an R package and just want to add some functionality to it, e.g. using _roxygen2_ with Markdown (item 3) or enabling CI for your package (item 6).

1. Use `usethis::create_package("<path-to-package-dir>")`. 
    Here is an example with a package called `tic.package` stored within the `~/git/` directory:
    
    ```r
    usethis::create_package("~/git/tic.package")
    ✔ Changing active project to '/home/<username>/git/tic.package'
    ✔ Creating 'R/'
    ✔ Creating 'man/'
    ✔ Writing 'DESCRIPTION'
    ✔ Writing 'NAMESPACE'
    ✔ Writing 'tic.package.Rproj'
    ✔ Adding '.Rproj.user' to '.gitignore'
    ✔ Adding '^tic.package\\.Rproj$', '^\\.Rproj\\.user$' to '.Rbuildignore'
    ✔ Opening new project 'tic.package' in RStudio
    ```

2. Initialize Git via `usethis::use_git()`:

    ```
    ✔ Changing active project to '/home/<username>/git/tic.package'
    ✔ Initialising Git repo
    ✔ Adding '.Rhistory', '.RData' to '.gitignore'
    OK to make an initial commit of 5 files?
    1: Yup
    2: No
    3: Absolutely not

    Selection: 1
    ✔ Adding files and committing
    ● A restart of RStudio is required to activate the Git pane
    ● Restart now?
    1: Absolutely
    2: No way
    3: Absolutely not

    Selection: 1
    ```

3. (Optional) Use _roxygen2_ with Markdown support for package documentation: `usethis::use_roxygen_md()`:

    ```r
    ✔ Changing active project to '/home/<username>/git/tic.package'
    ✔ Setting Roxygen field in DESCRIPTION to 'list(markdown = TRUE)'
    ✔ Setting RoxygenNote field in DESCRIPTION to '6.0.1.9000'
    ● Run `devtools::document()`
    ```

4. Add a license: `usethis::add_gpl3_license()` (or any license of your choice):

     ```r
    ✔ Changing active project to '/home/<username>/git/tic.package'
    ✔ Setting License field in DESCRIPTION to 'GPL-3'
    ✔ Writing 'LICENSE.md'
    ✔ Adding '^LICENSE\\.md$' to '.Rbuildignore'
    ```

5. Create a Github repo by using `usethis::use_github()`:

    ```r
    ● Check title and description
      Name:        tic.package
      Description: What the Package Does (One Line, Title Case)
    Are title and description ok?
    1: No way
    2: I agree
    3: Nope

    Selection: 2
    ✔ Creating GitHub repository
    ✔ Adding GitHub remote
    ✔ Adding GitHub links to DESCRIPTION
    ✔ Setting URL field in DESCRIPTION to 'https://github.com/<user>/tic.package'
    ✔ Setting BugReports field in DESCRIPTION to 'https://github.com/<user>/tic.package/issues'
    ✔ Pushing to GitHub and setting remote tracking branch
    ```

6. Set up Continuous Integration by using `tic::use_tic()`. Take a look at the [Getting Started](https://ropenscilabs.github.io/tic/articles/tic.html) vignette of the [tic](https://github.com/ropenscilabs/tic) package for a detailed walkthrough.
