
# Dockerfile for Tor Proxy
FROM alpine:latest

# Install Tor and required dependencies
RUN apk add --no-cache tor

# Copy Tor configuration
COPY torrc /etc/tor/torrc

# Expose the SOCKS5 port (default is 9050)
EXPOSE 9050

# Run Tor as a service
CMD ["tor"]
