need .env file with PAPERLESS_SECRET_KEY=key
can generate with
```
python3 -c "import secrets; print(secrets.token_urlsafe(64))"
```
