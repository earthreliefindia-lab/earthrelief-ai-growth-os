# API Keys Guide

This guide lists the API keys and credentials needed for Earth Relief AI Growth OS.

## Important Security Rule

Never commit real API keys into GitHub.

Use placeholders in documentation and store real keys only inside secure environment variables or tool settings.

## Required Keys For V1

```text
GEMINI_API_KEY=
SUPABASE_URL=
SUPABASE_SERVICE_ROLE_KEY=
FLOWISE_API_URL=
FLOWISE_API_KEY=
ACTIVEPIECES_WEBHOOK_URL=
POSTIZ_API_KEY=
```

## Optional Keys For SEO

```text
GOOGLE_SEARCH_CONSOLE_CLIENT_ID=
GOOGLE_SEARCH_CONSOLE_CLIENT_SECRET=
GOOGLE_ANALYTICS_CLIENT_ID=
GOOGLE_ANALYTICS_CLIENT_SECRET=
PAGESPEED_API_KEY=
```

## Optional Keys For Social Platforms

```text
META_APP_ID=
META_APP_SECRET=
LINKEDIN_CLIENT_ID=
LINKEDIN_CLIENT_SECRET=
YOUTUBE_CLIENT_ID=
YOUTUBE_CLIENT_SECRET=
```

## Free-First Model Strategy

V1 can use Gemini free tier for AI generation.

Later, Earth Relief can migrate to open-source models using VPS or hosted inference.

## Key Storage Rules

Use these places for secrets:

```text
Supabase environment variables
Activepieces connections
Flowise credentials
VPS .env file
```

Do not store secrets in:

```text
README.md
public GitHub files
workflow documentation
screenshots
chat messages
```

## Rotation Rule

If a key is accidentally exposed, immediately revoke it and create a new key.
