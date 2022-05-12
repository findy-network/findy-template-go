# findy-template-go

[![test](https://github.com/findy-network/findy-template-go/actions/workflows/test.yml/badge.svg)](https://github.com/findy-network/findy-template-go/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/findy-network/findy-template-go/branch/master/graph/badge.svg?token=Q9NQZ1U0LR)](https://codecov.io/gh/findy-network/findy-template-go)

Template structure for Findy Go projects

## Create new project

1. [Open create new repository view](https://github.com/new).
2. Choose `findy-network/findy-template-go` as the repository template.
3. Clone the newly created repository to local.
4. Create `dev` branch for the new repository:

```
git checkout -b dev
git push --set-upstream origin dev
```

5. Replace ´findy-template-go´ with your project name in relevant source files.
6. Edit this README file and set up the CI tests based on your project.

## CI setup

The default CI configuration runs unit tests and linting for each push. Customize the scripts depending on project needs.

For linting in local desktop, you need to install [golangci-lint](https://golangci-lint.run/usage/install/#local-installation)

## Makefile

Makefile in project root contains handy shortcuts for different testing and building related commands.

## Docker image

Dockerfile contains the basic steps for building a simple container with the project executable. Edit or remove according to your project needs.
