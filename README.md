# OpenWA Deployment

Simplified OpenWA deployment using the official image.

## 🚀 Render Deployment

1. **Create Web Service** on Render
2. **Image**: Use `openwa/wa-automate:latest` (public Docker image)
3. **Set Environment Variables**:
   ```
   PORT=3000
   WHATSAPP_HOOK_URL=https://your-app-url.onrender.com/openwa/webhook
   WHATSAPP_HOOK_SECRET=your-secret
   WHATSAPP_API_KEY=your-api-key
   SESSION_NAME=kissan-assistant
   ```
4. **Deploy**

## 🔧 Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `PORT` | Service port | No (default: 3000) |
| `WHATSAPP_HOOK_URL` | Webhook endpoint URL | Yes |
| `WHATSAPP_HOOK_SECRET` | HMAC secret for webhooks | Yes |
| `WHATSAPP_API_KEY` | API key for authentication | Yes |
| `SESSION_NAME` | WhatsApp session name | No (default: default-session) |

## ⚠️ Important

OpenWA uses reverse-engineered WhatsApp clients. Never use your primary WhatsApp number. Use a dedicated number you can afford to lose.
