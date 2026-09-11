# =============================================================================
#  OpenWA Dockerfile - Simplified for Render deployment
#  Uses official OpenWA image with environment variable configuration
# =============================================================================
FROM openwa/wa-automate:latest

LABEL maintainer="tirthachetry-zoho"
LABEL description="OpenWA WhatsApp Gateway - Simplified deployment"

# Set default environment variables
ENV PORT=3000
ENV WHATSAPP_HOOK_URL=""
ENV WHATSAPP_HOOK_SECRET=""
ENV WHATSAPP_API_KEY=""
ENV SESSION_NAME="default-session"
ENV WHATSAPP_AUTO_REGISTER_WEBHOOK="false"

# Expose the default port
EXPOSE 3000
