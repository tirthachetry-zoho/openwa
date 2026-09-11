# OpenWA Deployment

Simplified OpenWA deployment for Render and other cloud platforms.

## 🚀 Render Deployment (One-Click)

1. **Create Web Service** on Render
2. **Connect this repository** (https://github.com/tirthachetry-zoho/openwa)
3. **Set Environment Variables**:
   ```
   PORT=3000
   WHATSAPP_HOOK_URL=https://your-app-url.onrender.com/openwa/webhook
   WHATSAPP_HOOK_SECRET=your-secret
   WHATSAPP_API_KEY=your-api-key
   SESSION_NAME=kissan-assistant
   ```
4. **Deploy** - Render will automatically build and deploy

## 🔧 Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `PORT` | Service port | No (default: 3000) |
| `WHATSAPP_HOOK_URL` | Webhook endpoint URL | Yes |
| `WHATSAPP_HOOK_SECRET` | HMAC secret for webhooks | Yes |
| `WHATSAPP_API_KEY` | API key for authentication | Yes |
| `SESSION_NAME` | WhatsApp session name | No (default: default-session) |

## 📝 Notes

- Uses official `openwa/wa-automate:latest` image
- No custom dependencies or complex setup
- Health check: `http://localhost:3000/health`

## ⚠️ Important

OpenWA uses reverse-engineered WhatsApp clients. Never use your primary WhatsApp number. Use a dedicated number you can afford to lose.
