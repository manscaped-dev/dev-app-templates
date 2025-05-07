# {{ cookiecutter.__project_title }}

{{ cookiecutter.__description }}

See @manscaped-dev/sre-app-templates

## Adding Doppler Variables

In the doppler-env.yml file, place the name of the doppler variable in the
list, the SRE team will automatically pull these into Doppler and evaluate
what is already there and what is needed. If there are needed variables, the
value must be placed in the Doppler UI. The reason for this is to ensure 
that the SRE team has all of the Doppler variables needed and if there are
variables missing, or the values are empty, we will know faster and be able
to remedy the problem.
