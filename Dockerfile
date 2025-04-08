FROM python:3.12-slim

# Install mkslides
RUN pip install mkslides

# Set the working directory inside the container
WORKDIR /slides

# Expose the port that mkslides uses for live preview
EXPOSE 8000

# Default command to keep the container running
CMD ["bash"]