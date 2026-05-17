# Workflow: Approved Content to Postiz

This workflow moves approved Earth Relief content from the approval queue into Postiz as a draft or scheduled post.

## Goal

Approved content → Postiz draft → manual final review → scheduled post.

## Tools

- Activepieces for workflow automation
- Supabase/PostgreSQL approval database
- Postiz for multi-platform social scheduling

## Trigger

Approval status changes to:

```text
approved
```

## Workflow Steps

1. Watch approval database

Listen for content where:

```text
type = social_content
status = approved
```

2. Validate content

Before sending to Postiz, check:

```text
platform exists
caption exists
CTA exists
risk is not high
approval timestamp exists
```

3. Create Postiz draft

Send approved content as draft, not instant publish.

Fields:

```text
platform
caption
hashtags
media notes
scheduled date
status = draft
```

4. Notify founder

Message:

```text
Approved content has been moved to Postiz draft for final scheduling.
```

## Safety Rules

- Never auto-publish in V1.
- High-risk content must stay in manual review.
- Modified content must go back to approval queue.

## Success Criteria

A draft is created in Postiz and can be reviewed before scheduling.
