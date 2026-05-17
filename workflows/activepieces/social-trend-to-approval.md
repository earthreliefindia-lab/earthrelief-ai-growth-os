# Workflow: Social Trend to Approval

This workflow converts a social media trend into an Earth Relief content suggestion and stores it for human approval.

## Goal

Trend input → AI analysis → Earth Relief adaptation → approval queue.

## Tools

- Activepieces for automation
- Flowise or Dify-compatible AI agent for content generation
- Supabase/PostgreSQL for approval storage
- Email, Telegram, or dashboard notification for founder review

## Trigger Options

Start with manual trigger first.

Later options:

- Daily scheduled trigger
- Google Sheet trend list
- Social listening tool
- Apify scraper
- Manual form submission

## Workflow Steps

1. Receive trend input

Required fields:

```text
trend_name
platform
trend_source
trend_summary
example_link
business_goal
```

2. Send input to Social Media Marketing Agent

The agent must analyze:

```text
hook
emotion
conflict
visual style
viral psychology
business relevance
Earth Relief adaptation
CTA opportunity
```

3. Generate platform-specific content

Output must include:

```text
Instagram reel concept
Facebook reel concept
LinkedIn post version
YouTube Shorts script
Caption
Hashtags
CTA
Risk score
Confidence score
```

4. Create approval item

Store output in approval database with status:

```text
pending
```

5. Notify founder

Send a simple review message:

```text
New Earth Relief content idea is ready for approval.
Action: Approve / Reject / Modify
```

## Approval Rule

The workflow must stop after creating the approval item.

No publishing.
No scheduling.
No website update.
No automatic social media action.

## Success Criteria

A complete content idea exists in the approval queue with:

- suggestion
- reason
- expected impact
- risk
- confidence
- approval buttons or natural language approval support
