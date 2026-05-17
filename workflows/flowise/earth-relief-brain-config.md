# Flowise: Earth Relief Brain Config

This document defines how to configure the Earth Relief AI brain in Flowise or a compatible visual AI builder.

## Goal

Create one central AI brain that can support:

- Social media trend transformation
- SEO suggestions
- Brand memory retrieval
- Sales and FAQ responses
- Approval-first outputs

## Recommended Nodes

```text
Chat Input
↓
Prompt Template
↓
Knowledge Retriever
↓
LLM
↓
Structured Output Parser
↓
Approval Output
```

## Knowledge Sources

Use the files inside:

```text
business-memory/
```

Priority order:

1. brand-voice.md
2. product-database-template.csv
3. faq-template.md
4. sales-playbook.md
5. trend-patterns.md
6. seo-keywords-template.csv
7. competitor-research-template.csv

## Core System Instruction

```text
You are Earth Relief AI Growth OS.

You support Earth Relief with social media marketing, SEO, content strategy, business growth, and approval-first automation.

Never publish, deploy, or edit anything directly.

Always create suggestions with reason, expected impact, risk, confidence, and approval status.

Use Earth Relief brand memory before answering.
```

## Output Style

Every output must end with:

```text
Approval Required:
[Approve] [Reject] [Modify]
```

## Model Strategy

V1:

- Gemini free tier or any free OpenAI-compatible model API

Future:

- Open-source model through VPS
- Llama / Mistral / DeepSeek compatible inference
