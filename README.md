# tic.package

[![Travis-CI Build Status](https://travis-ci.org/krlmlr/tic.package.svg?branch=master)](https://travis-ci.org/krlmlr/tic.package) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/krlmlr/tic.package?branch=master&svg=true)](https://ci.appveyor.com/project/krlmlr/tic-package) [![Coverage Status](https://codecov.io/gh/krlmlr/tic.package/branch/master/graph/badge.svg)](https://codecov.io/github/krlmlr/tic.package?branch=master)

A minimal example package with `pkgdown` documentation created and uploaded by [tic](https://github.com/ropenscilabs/tic) (the `pkgdown` documentation is written to, and served from, the `docs` directory of the `master` branch.).
`tic` is an R package for CI-agnostic workflow definitions for various R projects. 
See its [documentation](https://ropenscilabs.github.io/tic/) for more information.

# How to use this example repo as the base for your own R package

Two ways exist:  
1. By forking this repo and adapting it to your needs  
2. By starting from scratch locally and going step by step

## Way 1: Forking this repo

1. Use `usethis::create_from_github()` within RStudio to automatically create a fork of this repo as a new RStudio project. You may need to set up your SSH credentials first. See [this guide](http://happygitwithr.com/ssh-keys.html) if you're having problems. Its definitely worth getting this function running as it saves you so much time in the future! Alternatively, fork this repo on Github and then create a new RProject within RStudio (File -> New Project -> Version Control -> Github). 
2. Change the DESCRIPTION file to your needs (package title, maintainer, links).
3. Rename the `.Rproj` file and the folder of the project to the name of your package.
4. Run `usethis::use_ci()` to set up all requirements needed for the CI integration of your package.

## Way 2: Starting from scratch locally

This is the detailed way going step by step from the bottom up.
Looking here can be useful if you already have an R package and just want to add some functionality to it, e.g. using `roxygen` with markdown (point 3) or enabling CI for your package (point 6).

1. Use `usethis::create_package("<path-to-package-dir")`. Here is an example with a package called `tic.package` stored within the `~/git/` directory:

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

2. Initialize `git` using `usethis::use_git()`:

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

3. Use `roxygen2` in markdown format for package documentation: `usethis::use_roxygen_md()`

```r
✔ Changing active project to '/home/<username>/git/tic.package'
✔ Setting Roxygen field in DESCRIPTION to 'list(markdown = TRUE)'
✔ Setting RoxygenNote field in DESCRIPTION to '6.0.1.9000'
● Run `devtools::document()`
```

4. Add the license: `usethis::add_gpl3_license()` (or any license of your choice):

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

6. Set up Continuous Integration via Travis and Appveyor by using `usethis::use_ci()`

```r
Authenticating with GitHub
Waiting for authentication in browser...
Press Esc/Ctrl + C to abort
Authentication complete.
✔ Changing active project to '/home/<username>/git/tic.package'
Authenticating with Travis
Authenticating with GitHub
Waiting for authentication in browser...
Press Esc/Ctrl + C to abort
Authentication complete.
Finished initiating sync with GitHub.
Waiting for sync with GitHub....
Finished sync with GitHub.
Finished activating repo <user>/tic.package on Travis CI.
Added .travis.yml from template.
✔ Adding '^\\.travis\\.yml$' to '.Rbuildignore'
Added appveyor.yml from template.
✔ Adding '^appveyor\\.yml$' to '.Rbuildignore'
Added tic.R from template.
✔ Adding '^tic\\.R$' to '.Rbuildignore'
Authenticating with GitHub
Waiting for authentication in browser...
Press Esc/Ctrl + C to abort
Authentication complete.
Finished adding deploy keys on GitHub for repo <user>/tic.package.
Successfully added public deploy key 'travis+tic' to GitHub for <user>/tic.package. You should receive a confirmation e-mail from GitHub. Delete the key in the repository's settings when you no longer need it.
Finished adding private environment variable id_rsa to <user>/tic.package on Travis CI.
Successfully added private deploy key to <user>/tic.package as secure environment variable id_rsa to Travis CI.
Create a personal access token, make sure that you are signed in as the correct user. The suggested description 'travis+tic for <user>/tic.package' has been copied to the clipboard. If you use this token only to avoid GitHub's rate limit, you can leave all scopes unchecked. Then, copy the new token to the clipboard, it will be detected and applied automatically. Please visit
  https://github.com/settings/tokens/new
A browser window will be opened.
Waiting for PAT to appear on the clipboard.
Detected PAT, clearing clipboard.
Finished adding private environment variable GITHUB_PAT to <user>/tic.package on Travis CI.
```
