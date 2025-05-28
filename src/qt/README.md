
# Qt 6

Set up a Qt development environment in a dev container

## Example Usage

```json
"features": {
    "ghcr.io/zaval/feature-starter/qt:1": {
        "version": "6.9.0",
        "modules": "qtbase,qtdeclarative"
    }
}
```

## Options


| Options Id | Description                         | Type   | Default Value        |
|------------|-------------------------------------|--------|----------------------|
| version    | Select a Qt version to install      | string | 6.9.0                |
| modules    | Select a list of modules to install | string | qtbase,qtdeclarative |
