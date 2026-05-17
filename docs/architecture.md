# Architecture V1

Earth Relief AI Growth OS is a cloud-first, approval-first AI system for social media marketing, SEO, and growth automation.

## Design Rules

1. AI suggests first.
2. Humans approve before action.
3. No auto-posting.
4. No auto-deployment.
5. Free-first and open-source-first tools are preferred.
6. The founder should be able to operate the system from a browser.

## System Map

```text
Earth Relief Business Memory
Products | FAQ | Brand Voice | SEO | Trends | Sales Scripts
        ↓
AI Agent Brain
Flowise / Dify-compatible prompts / future LangGraph
        ↓
Memory Layer
Qdrant / pgvector
        ↓
Automation Layer
Activepieces first, n8n optional
        ↓
Approval Queue
Supabase / PostgreSQL
        ↓
Approved Actions
Postiz drafts / SEO task list / staging website changes
```

## Agents

### Social Media Marketing Agent

Creates Earth Relief-specific content from trends without copying them.

### SEO Expert Agent

Audits website and search data, then creates approval-first SEO suggestions.

### Approval Agent

Formats every recommendation into a clear decision card with risk and confidence.

## Hosting Direction

The system should run online, not on a local PC. The founder controls it through web dashboards.

V1 uses free cloud tiers where possible. Later migration to a VPS should be simple through Docker-based deployment.
