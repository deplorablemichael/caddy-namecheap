FROM caddy:2-builder-alpine AS builder
# test
RUN xcaddy build \
    --with github.com/caddy-dns/namecheap

FROM caddy:2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
