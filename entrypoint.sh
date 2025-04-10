#!/bin/bash
set -e

function help() {
    echo "Usage: docker run [OPTIONS] image[:tag] [COMMAND]"
    echo ""
    echo "Commands:"
    echo "  help          Show this help message"
    echo "  serve         Build and serve the slides (default directory: /slides)"
    echo "  build         Build the slides (default directory: /slides)"
    echo "  bash          Start a bash shell"
    echo ""
    echo "Environment Variables:"
    echo "  SLIDES_DIR    The directory containing slide markdown files"
    echo ""
    echo "Example:"
    echo "  docker run -v \$(pwd):/slides -p 8000:8000 image:tag serve"
}

case "$1" in
    serve)
        mkslides serve --dev-addr 0.0.0.0:8000 /slides
        ;;
    build)
        mkslides build /slides
        ;;
    bash)
        exec bash
        ;;
    help|*)
        help
        ;;
esac