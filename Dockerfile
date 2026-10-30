FROM alpine:3.21

WORKDIR /app

COPY src/ /app/

# Temporary developer backup
COPY .secret /secret.txt

# Developer thinks the secret is gone
RUN rm -f /secret.txt

CMD ["sh"]