# Developer Application Templates

This is the home for the Developer application templates - internal tooling.

## STOP!!! Please Read!

### Prerequisites

There are some prerequisites that are needed to build these projects:

1. A Doppler Token that has access to the project `mando`.
   There is a service account that have access and the SRE can add a token in that Service Account for you.

2. Python 3.12.6, and pip packages in the `requirements.txt` file.

### Installation of Prerequisites

```bash
make install
```

## Create a new Base `core-app` (manscaped-5-server)

To build:

```bash
./dev/.python/bin/cookiecutter git@github.com:manscaped-dev/dev-app-templates.git --checkout main --directory core-apps-base
```
