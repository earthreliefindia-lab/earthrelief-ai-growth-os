# Earth Relief AI Growth OS

Cloud-first, approval-first AI growth system for Earth Relief.

This repository contains the operating structure for AI agents that help with:

- Social media trend analysis
- Instagram, Facebook, LinkedIn, and YouTube content planning
- SEO audits and search growth suggestions
- Human approval workflows
- Sustainable packaging brand memory
- Free-first and open-source-first deployment planning

## Core Principle

AI must never publish, deploy, or edit production assets without human approval.

Every AI action must produce:

```text
Suggestion
Reason
Expected impact
Risk
Confidence
Approve / Reject / Modify
```

## Architecture

```text
Earth Relief Knowledge Base
        ↓
AI Brain / Agent Builder
        ↓
Vector Memory
        ↓
Automation Engine
        ↓
Approval Queue
        ↓
Approved Drafts / SEO Tasks
        ↓
Post Scheduler / Website Staging
```

## Free-First Stack

| Layer | Preferred Tool |
|---|---|
| Agent brain | Flowise or Dify-compatible prompts |
| Automation | Activepieces first, n8n optional |
| Memory | Qdrant or pgvector |
| Approval database | PostgreSQL / Supabase free tier |
| Social scheduler | Postiz |
| Model | Gemini free tier first, open-source model later |
| Future orchestration | LangGraph |

## First Agent

The first agent is the Social Trend Agent.

It converts trends into Earth Relief-specific sustainable packaging content while keeping brand tone, business relevance, and approval safety.

Example:

```text
Trend: Hero defeats villain
Earth Relief version:
Hero = sustainable business
Villain = plastic pollution
CTA = Switch to biodegradable packaging before pollution wins
```

## Status

Architecture V1 approved.

Implementation phase started.
