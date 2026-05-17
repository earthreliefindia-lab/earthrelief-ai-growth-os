# Setup Guide

This guide explains how to set up Earth Relief AI Growth OS using a cloud-first and free-first approach.

## Goal

Create the first working AI system:

```text
Trend input
↓
AI content suggestion
↓
Approval queue
↓
Founder approval
↓
Postiz draft or SEO task
```

## Required Accounts

Create these accounts first:

```text
GitHub
Supabase
Flowise or Dify
Activepieces
Postiz
Google AI Studio
Google Drive
Google Search Console
```

## Step 1: Prepare Business Memory

Start with the files inside:

```text
business-memory/
```

Update these files with real Earth Relief data:

```text
brand-voice.md
faq-template.md
sales-playbook.md
trend-patterns.md
product-database-template.csv
seo-keywords-template.csv
competitor-research-template.csv
```

Important rule:

```text
Only approved and verified information should become permanent AI memory.
```

## Step 2: Create Approval Database

Use Supabase or PostgreSQL.

Create a table named:

```text
approval_items
```

Suggested columns:

```text
id
item_type
platform
suggestion
reason
expected_impact
risk
confidence
status
created_at
updated_at
founder_notes
```

Allowed status values:

```text
pending
approved
rejected
modify_requested
```

## Step 3: Configure AI Brain

Use Flowise or Dify-compatible setup.

Load these prompts:

```text
agents/social-media-agent/system-prompt.md
agents/seo-agent/system-prompt.md
agents/approval-agent/approval-rules.md
```

Connect knowledge from:

```text
business-memory/
```

## Step 4: Create First Automation

Use Activepieces.

Build this first workflow:

```text
Manual trigger
↓
Send trend input to AI agent
↓
Receive structured content idea
↓
Save to approval_items table
↓
Notify founder
```

Reference workflow:

```text
workflows/activepieces/social-trend-to-approval.md
```

## Step 5: Test Manually

Use this test trend:

```text
Trend: Hero defeats villain
Platform: Instagram
Goal: Create demand for sustainable packaging among businesses
```

Expected output:

```text
Trend Summary
Viral Psychology
Earth Relief Adaptation
Reel Script
Caption
CTA
Risk
Confidence
Approval Required
```

## Step 6: Approve or Modify

The AI must stop after creating a pending approval item.

The founder can respond:

```text
approve
reject
change CTA
rewrite for LinkedIn
make it more premium
make it more emotional
```

## V1 Completion Checklist

```text
Business memory updated
AI brain configured
Approval database created
Manual trend workflow tested
Approval status working
No auto-publishing enabled
```
