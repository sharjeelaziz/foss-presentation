FROM python:3.12-slim

RUN pip install mkslides

WORKDIR /slides

EXPOSE 8000

# Create an entrypoint script that provides more options
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["help"]