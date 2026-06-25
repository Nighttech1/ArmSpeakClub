#!/usr/bin/env bash
# Первичная установка Vernatun website на VPS (nginx, порт 85, SSL через certbot).
set -euo pipefail

APP_ROOT="${APP_ROOT:-$HOME/Vernatun website}"
PORT="${VERNATUN_WEB_PORT:-85}"
DOMAIN="${VERNATUN_DOMAIN:-vernatunspeakclub.com}"
WWW_DOMAIN="www.${DOMAIN}"

echo "==> Vernatun website install at: $APP_ROOT (port $PORT, domain $DOMAIN)"

mkdir -p "$APP_ROOT/web"

NGINX_CONF="$APP_ROOT/vps door/Vernatun website/nginx/vernatunspeakclub.com.conf"
if [[ ! -f "$NGINX_CONF" ]]; then
  NGINX_CONF="$(dirname "$0")/../nginx/vernatunspeakclub.com.conf"
fi

if [[ -f "$NGINX_CONF" ]]; then
  echo "==> nginx site"
  sudo cp "$NGINX_CONF" /etc/nginx/sites-available/vernatunspeakclub.com
  sudo ln -sf /etc/nginx/sites-available/vernatunspeakclub.com /etc/nginx/sites-enabled/
  sudo nginx -t
  sudo systemctl reload nginx
else
  echo "ERROR: nginx config not found: $NGINX_CONF" >&2
  exit 1
fi

echo "==> local health (port $PORT)"
sleep 1
curl -sf "http://127.0.0.1:${PORT}/" | head -c 200 && echo || echo "WARN: port $PORT not responding yet"

echo "==> certbot SSL (non-interactive if possible)"
if command -v certbot >/dev/null 2>&1; then
  if sudo certbot certificates 2>/dev/null | grep -q "$DOMAIN"; then
    echo "Certificate for $DOMAIN already exists, renewing nginx config..."
    sudo certbot --nginx -d "$DOMAIN" -d "$WWW_DOMAIN" --non-interactive --agree-tos --redirect || true
  else
    sudo certbot --nginx -d "$DOMAIN" --non-interactive --agree-tos --redirect --register-unsafely-without-email || \
      echo "WARN: certbot failed — проверьте DNS A-запись $DOMAIN -> VPS IP"
    # www: добавьте A-запись www -> VPS, затем:
    # sudo certbot --nginx -d $DOMAIN -d www.$DOMAIN --expand
  fi
  sudo nginx -t
  sudo systemctl reload nginx
else
  echo "WARN: certbot not installed. Run: sudo apt install certbot python3-certbot-nginx"
fi

echo "==> done"
echo "Site:  http://127.0.0.1:${PORT}/"
echo "Site:  https://${DOMAIN}/"
