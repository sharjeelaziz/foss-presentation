# Presenting with FOSS

A Docker-based tool for creating, building, and serving presentations using free and open-source software.

## Powered by

This project utilizes these amazing FOSS technologies:

| Technology | Description |
|------------|-------------|
| [Reveal.js](https://revealjs.com) | HTML presentation framework |
| [mkslides](https://pypi.org/project/mkslides) | Tool for creating slides from Markdown |
| [Mermaid](https://mermaid.js.org) | JavaScript based diagramming and charting tool |
| [Markdown Guide](https://www.markdownguide.org) | Simple markup language |

For inspiration, check out:
- [HoGentTIN Markdown Slides](https://github.com/HoGentTIN/hogent-markdown-slides)

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

## Features

- Create presentation slides using Markdown
- Build slides to HTML
- Serve slides with live preview
- Customize the slides directory

## Requirements

- Docker
- Make (for using the provided makefile commands)

## Usage

This project uses a Makefile to simplify Docker commands.

### Basic Commands

```bash
# Show help information
make help

# Build the Docker image
make build

# Serve slides (accessible at http://localhost:8000)
make serve

# Build slides without serving
make build-slides

# Start a bash shell inside the container
make bash

# Remove the Docker image
make clean
```

### Custom Slides Directory

By default, the tool looks for slides in the `./slides` directory. You can specify a different directory using the `SLIDES_DIR` variable:

```bash
make serve SLIDES_DIR=./my-presentations
```

### Generating Slides

The slides are defined in the `slides` directory. You can edit `slide1.md`, `slide2.md`, and `slide3.md` to customize your presentation content.

### Configuration

The `mkslides.toml` file contains configuration settings for the presentation, including theme and layout options. Modify this file to change the appearance of your slides.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
