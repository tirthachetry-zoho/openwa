# =============================================================================
#  OpenWA Dockerfile
#  This Dockerfile is for deploying the OpenWA service on Render
#  or other platforms that don't support docker-compose.
# =============================================================================
FROM openwa/wa-automate:latest

LABEL maintainer="tirthachetry-zoho"
LABEL description="OpenWA WhatsApp Gateway"

# Install procps for ps command (required by OpenWA for process management)
# Base image is Debian-based and runs as non-root, so switch to root temporarily
# Handle expired repositories and GPG key issues
USER root
RUN rm -f /etc/apt/sources.list.d/google-chrome.list && \
    apt-get update --allow-releaseinfo-change || true && \
    apt-get install -y --allow-unauthenticated procps && \
    rm -rf /var/lib/apt/lists/*
USER openwa

# Set default environment variables
ENV PORT=3000
ENV WHATSAPP_HOOK_URL=""
ENV WHATSAPP_HOOK_SECRET=""
ENV WHATSAPP_API_KEY=""
ENV SESSION_NAME="default-session"
ENV WHATSAPP_AUTO_REGISTER_WEBHOOK="false"

# The base image already creates /app/.sessions and handles permissions
# No need to create it here

# Expose the default port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=5 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1

# The base image already sets the entrypoint
