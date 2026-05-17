# Workflow: Search Console SEO Monitor

This workflow monitors Earth Relief SEO data and creates approval-first improvement suggestions.

## Goal

Search Console data -> SEO Agent analysis -> suggestion report -> approval queue.

## Tools

- Google Search Console
- Activepieces
- SEO Expert Agent
- Supabase/PostgreSQL approval database

## Trigger Options

Start with weekly manual run.

Later options:

- Weekly scheduled report
- Ranking drop alert
- New keyword opportunity alert
- Page indexing issue alert

## Workflow Steps

1. Pull Search Console data

Recommended fields:

```text
page
query
clicks
impressions
ctr
average_position
date_range
```

2. Detect opportunities

Look for:

```text
high impressions + low CTR
ranking positions 4 to 20
pages losing clicks
keywords with business intent
content gaps
internal linking opportunities
```

3. Send findings to SEO Expert Agent

The agent must create:

```text
SEO observation
affected page
recommended change
reason
expected impact
risk
confidence
```

4. Create approval item

Store recommendation with status:

```text
pending
```

5. Notify founder

Message:

```text
New SEO suggestion is ready for approval.
```

## Safety Rules

- No automatic website edits.
- No direct production deployment.
- No spam SEO tactics.
- No keyword stuffing.
- Approved changes should become website tasks or staging drafts first.

## Success Criteria

The founder receives clear SEO suggestions that can be approved, rejected, or modified.
