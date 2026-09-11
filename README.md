# OpenWA Deployment

This repository contains a customized Dockerfile for deploying OpenWA (Open Source WhatsApp API Gateway) on cloud platforms like Render.

## 🚀 Quick Start

### Docker Build

```bash
docker build -t openwa-custom .
docker run -p 3000:3000 \
  -e PORT=3000 \
  -e WHATSAPP_HOOK_URL=https://your-app.com/webhook \
  -e WHATSAPP_HOOK_SECRET=your-secret \
  -e WHATSAPP_API_KEY=your-api-key \
  -e SESSION_NAME=my-session \
  openwa-custom
```

### Render Deployment

1. Create a new Web Service on Render
2. Connect this repository
3. Set the following environment variables:
   ```
   PORT=3000
   WHATSAPP_HOOK_URL=https://your-kissan-ai-app.onrender.com/openwa/webhook
   WHATSAPP_HOOK_SECRET=your-webhook-secret
   WHATSAPP_API_KEY=your-api-key
   SESSION_NAME=kissan-assistant
   WHATSAPP_AUTO_REGISTER_WEBHOOK=false
   ```

## 🔧 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `PORT` | Service port | `3000` |
| `WHATSAPP_HOOK_URL` | Webhook endpoint URL | - |
| `WHATSAPP_HOOK_SECRET` | HMAC secret for webhook validation | - |
| `WHATSAPP_API_KEY` | API key for authentication | - |
| `SESSION_NAME` | WhatsApp session name | `default-session` |
| `WHATSAPP_AUTO_REGISTER_WEBHOOK` | Auto-register webhook on startup | `false` |

## 📝 Notes

- This is a customized deployment based on [openwa/wa-automate](https://github.com/openwa/wa-automate)
- For full OpenWA documentation, visit the official repository
- Health check endpoint: `http://localhost:3000/health`

## ⚠️ Important

OpenWA uses reverse-engineered WhatsApp clients and carries a risk of account restrictions. Never use your primary WhatsApp number. Use a dedicated number you can afford to lose.

## 📄 License

This deployment configuration follows the same license as the base OpenWA project (MIT).
