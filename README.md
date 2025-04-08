# Presenting with FOSS

This project utilizes:

- https://revealjs.com
- https://pypi.org/project/mkslides
- https://mermaid.js.org
- https://www.markdownguide.org

## Project Structure

```
mkslides-presentation
├── slides
│   ├── assets
│   │   └── images
│   │       └── placeholder.md
│   ├── slide1.md
│   ├── slide2.md
│   └── slide3.md
├── Dockerfile
├── makefile
├── mkslides.toml
└── README.md
```

## Getting Started

To get started with this project, follow the instructions below:

### Prerequisites

- Ensure you have Docker installed on your machine.
- Make sure you have `make` installed for using the provided makefile commands.

### Building the Docker Image

To build the Docker image for the mkslides tool, run the following command in the project root directory:

```
make build
```

This will build the Docker image with the tag `mkslides-container`.

### Running the Presentation

To run the presentation server, use:

```
make run
```

This will start the server on port 8000. You can view the presentation by opening `http://localhost:8000` in your web browser.

### Building the Slides

To generate the slides without running the server:

```
make slides
```

This will build the presentation slides from your Markdown files.

### Cleaning Up

To remove the Docker image:

```
make clean
```

### Generating Slides

The slides are defined in the `slides` directory. You can edit `slide1.md`, `slide2.md`, and `slide3.md` to customize your presentation content.

### Configuration

The `mkslides.yaml` file contains configuration settings for the presentation, including theme and layout options. Modify this file to change the appearance of your slides.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.