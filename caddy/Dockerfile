# Build stage: compile Caddy with the official Cloudflare DNS module using xcaddy
FROM caddy:builder-alpine AS builder
 
RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare
 
# Final stage: same slim Caddy alpine base, swap in our custom binary
FROM caddy:alpine
 
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
