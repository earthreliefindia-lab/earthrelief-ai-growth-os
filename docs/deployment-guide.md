# Deployment Guide

This guide explains how to deploy Earth Relief AI Growth OS online so the founder can control it from a browser.

## Deployment Principle

The system should not depend on a local PC.

Your PC should only be used as a browser-based control panel.

## V1 Deployment Stack

```text
GitHub Repository
↓
Flowise / Dify-compatible AI Brain
↓
Supabase / PostgreSQL Approval Database
↓
Activepieces Automation
↓
Postiz Social Scheduler
```

## Free-First Deployment Order

1. Supabase free project
2. Flowise or Dify cloud/free deployment
3. Activepieces cloud/free deployment
4. Postiz cloud/self-host later
5. VPS migration when business ROI starts

## Environment Variables

Create a `.env` file later using `.env.example`.

Typical keys:

```text
GEMINI_API_KEY=
SUPABASE_URL=
SUPABASE_SERVICE_ROLE_KEY=
POSTIZ_API_KEY=
FLOWISE_API_URL=
FLOWISE_API_KEY=
ACTIVEPIECES_WEBHOOK_URL=
GOOGLE_SEARCH_CONSOLE_CLIENT_ID=
GOOGLE_SEARCH_CONSOLE_CLIENT_SECRET=
```

## V1 Safety Settings

Keep these disabled in production until manually approved:

```text
AUTO_PUBLISH=false
AUTO_DEPLOY=false
AUTO_WEBSITE_EDIT=false
```

## Deployment Stages

### Stage 1: Manual Agent

Founder enters trend manually.
AI creates approval item.
No automation beyond approval storage.

### Stage 2: Semi-Automated Workflow

Activepieces runs workflow.
AI creates suggestions.
Founder approves.
Approved items become Postiz drafts.

### Stage 3: SEO Monitoring

Search Console data is analyzed weekly.
AI creates SEO suggestions.
Founder approves website tasks.

### Stage 4: VPS Migration

Move to a low-cost VPS when usage increases.
Run services with Docker.

## VPS Target Later

Recommended minimum VPS:

```text
2 vCPU
4 GB RAM
40 GB SSD
Docker support
```

Better:

```text
4 vCPU
8 GB RAM
80 GB SSD
```

## Production Rule

Production deployment should always require human approval.
