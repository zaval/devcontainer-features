# Dev Container Features: 

This repo contains a collection of reusable [Dev Container Features](https://containers.dev/implementors/features/) to help you quickly set up and customize development environments using [Dev Containers](https://containers.dev/).

## Features

* [Qt](./src/qt/README.md)

## Usage

1. Reference this repository in your `devcontainer.json`:

    ```json
    {
      "features": {
         "ghcr.io/zaval/devcontainer-features/<feature-name>:<version>": {}
      }
    }
    ```

2. Replace `<feature-name>` and `<version>` with the desired feature and version.

## Contributing

Contributions are welcome! Please open issues or pull requests for new features, bug fixes, or improvements.

## License

This project is licensed under the [MIT License](LICENSE).