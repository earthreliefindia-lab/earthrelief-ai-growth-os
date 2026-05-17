# Hosting Options

This document lists cloud-first hosting options for Earth Relief AI Growth OS.

## Goal

Run the AI agent online so the founder can control everything from a browser.

## Free-First Options

### Supabase

Use for:

- Approval database
- Workflow logs
- Content status
- SEO suggestion storage

### Flowise Cloud / Self-hosted Flowise

Use for:

- Visual AI agent builder
- Prompt testing
- Knowledge retrieval
- Agent brain prototype

### Activepieces Cloud / Self-hosted Activepieces

Use for:

- Workflow automation
- Manual triggers
- Webhooks
- Google Drive sync
- Approval workflows

### Postiz

Use for:

- Social media drafts
- Scheduling after approval
- Multi-platform posting workflow

### Google Drive

Use for:

- Master business memory
- SOP files
- Product files
- SEO data sheets

## Later VPS Option

When the system starts generating business value, move to a VPS.

Suggested VPS:

```text
2 vCPU
4 GB RAM
40 GB SSD
```

Better VPS:

```text
4 vCPU
8 GB RAM
80 GB SSD
```

## Recommended V1 Hosting Path

```text
Supabase free tier
+
Flowise/Dify-compatible hosted brain
+
Activepieces cloud/free automation
+
Postiz draft workflow
+
Gemini free tier model
```

## Long-Term Open-Source Path

```text
VPS
+
Docker
+
Flowise
+
Qdrant
+
PostgreSQL
+
Activepieces
+
Postiz
+
Open-source LLM when compute is available
```

## Safety Reminder

Free hosting may sleep, rate-limit, or pause services. Do not depend on free tiers for mission-critical production without backups.
