FROM ghcr.io/aquasecurity/trivy:0.53.0
COPY entrypoint.sh /
RUN apk --no-cache add bash curl npm
RUN chmod +x /entrypoint.sh
RUN git config --system --add safe.directory '*'
ENTRYPOINT ["/entrypoint.sh"]
