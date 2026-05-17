# Workflow: Google Drive to Knowledge Sync

This workflow keeps Earth Relief business memory updated without manually re-uploading files.

## Goal

Google Drive master files → extract latest content → update AI knowledge base.

## Tools

- Google Drive
- Activepieces
- Flowise or Dify-compatible knowledge base
- Qdrant or pgvector memory layer

## Master Source Rule

Google Drive is the source of truth.

The AI knowledge base is only a synced copy.

## Trigger Options

Start with manual sync.

Later options:

- File updated in Google Drive
- Scheduled daily sync
- New file added to Earth Relief AI folder

## Watch Folder

```text
Earth Relief AI/
```

Suggested files:

```text
brand-voice.md
faq-template.md
sales-playbook.md
trend-patterns.md
product-database-template.csv
seo-keywords-template.csv
competitor-research-template.csv
```

## Workflow Steps

1. Detect changed file in Google Drive

2. Download or export file content

3. Clean text

Remove:

```text
extra spacing
broken formatting
duplicate headers
empty rows
```

4. Send cleaned content to knowledge pipeline

5. Re-index memory

6. Log sync result

Store:

```text
file_name
last_updated
sync_status
error_message
```

## Safety Rules

- Do not delete old knowledge unless replacement succeeds.
- Keep sync logs.
- Failed sync should notify founder.
- Do not sync unapproved draft content into final brand memory.

## Success Criteria

When a Google Drive file is updated, the AI agent uses the latest approved Earth Relief knowledge.
