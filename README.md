# Followme

## First step, before start the dev
install the project dependencies
```
poetry install --sync
poetry run pre-commit install
poetry run pre-commit migrate-config
```

## to add an external lib
poetry add 'lib-name'
### you should specify the dev group if the lib not essential four our project in the production
poetry add 'lib-name' --group dev
