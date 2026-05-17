# Activepieces Gemini Tool Type Guide

For the first Earth Relief AI workflow, do not use extra Gemini tools.

## First Workflow Goal

```text
Manual Trigger
↓
Gemini Generate Content
↓
Supabase approval_items insert
```

## Which Tool Type To Choose

For the first test:

```text
No tool / leave tool type empty / disable tools
```

If Activepieces forces a tool selection, use:

```text
Google Search
```

But only use Google Search later for trend research or SEO research.

## Do Not Use These In V1 Test

### URL Context

Use only when your prompt includes one or more URLs and you want Gemini to read those pages.

Example later:

```text
Analyze this competitor page: https://example.com
```

### File Search

Use only after files are uploaded or a file search system is configured.

### Google Maps

Use only for location-based tasks such as stores, local suppliers, local SEO, and nearby businesses.

## Recommended For Current Test

Action:

```text
Generate Content
```

Tool Type:

```text
None / blank / disabled
```

Model:

```text
gemini-2.5-flash
```

Prompt:

```text
Return only valid JSON.

You are Earth Relief Social Media Marketing Agent.

Create one approval-first Instagram reel idea for this trend:
Trend: Hero defeats villain
Business goal: Promote sustainable packaging to businesses.

Return only these JSON fields:
suggestion, reason, expected_impact, risk, confidence, caption, cta
```
