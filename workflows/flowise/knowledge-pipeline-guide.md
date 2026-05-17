# Flowise Knowledge Pipeline Guide

This guide explains how Earth Relief business memory should be connected to the AI brain.

## Goal

Turn approved Earth Relief documents into searchable agent memory.

## Knowledge Files

Use these files as the first knowledge source:

```text
business-memory/brand-voice.md
business-memory/faq-template.md
business-memory/sales-playbook.md
business-memory/trend-patterns.md
business-memory/product-database-template.csv
business-memory/seo-keywords-template.csv
business-memory/competitor-research-template.csv
```

## Pipeline Structure

```text
File Loader
↓
Text Cleaner
↓
Text Splitter
↓
Embedding Model
↓
Vector Store
↓
Retriever
↓
AI Agent
```

## Chunking Settings

Recommended starting values:

```text
Chunk size: 500
Chunk overlap: 50
Split style: paragraph
```

## Retrieval Rules

For social media requests, prioritize:

```text
brand-voice.md
trend-patterns.md
product-database-template.csv
```

For SEO requests, prioritize:

```text
brand-voice.md
seo-keywords-template.csv
competitor-research-template.csv
```

For sales replies, prioritize:

```text
sales-playbook.md
faq-template.md
product-database-template.csv
```

## Safety Rule

Only approved business memory should be synced into the knowledge base.

Draft ideas, unverified product claims, and experimental content must not become permanent memory until approved.
