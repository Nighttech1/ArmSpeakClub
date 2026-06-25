# Vernatun website на VPS

Статический лендинг Vernatun Armenian Club.

## Структура на сервере

```
/home/infinity/Vernatun website/
├── web/                 ← index.html, images/, gallery/, videos/
└── vps door/Vernatun website/   ← nginx + install script
```

## Порты и домен

| Порт | Назначение |
|------|------------|
| **85** | nginx отдаёт статику (`web/`) |
| **80** | nginx → proxy на :85 (для certbot и HTTP) |
| **443** | HTTPS после certbot |

Домен: **vernatunspeakclub.com**

DNS: A-запись `vernatunspeakclub.com` и `www.vernatunspeakclub.com` → `155.212.187.181`

## Деплой с Windows

```powershell
cd E:\Applications\Vernatun
. ".\vps door\load-ssh-env.ps1"
.\scripts\deploy_vernatun_to_vps.ps1
```

## Первичная установка на VPS (если nginx ещё не настроен)

```bash
cd ~/"Vernatun website"
bash "vps door/Vernatun website/scripts/install_on_vps.sh"
```

## Проверка

```bash
curl -sI http://127.0.0.1:85/
curl -sI https://vernatunspeakclub.com/
```
