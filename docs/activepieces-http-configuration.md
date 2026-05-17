# Activepieces HTTP Configuration

This guide explains how to configure HTTP Request steps for Gemini and Supabase in the first Earth Relief AI workflow.

## Workflow V1

```text
Manual Trigger
↓
HTTP Request: Gemini generate content
↓
HTTP Request: Supabase insert approval item
↓
Check approval_items table
```

## Gemini HTTP Request

Method:

```text
POST
```

URL:

```text
https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key={{GEMINI_API_KEY}}
```

Headers:

```text
Content-Type: application/json
```

Body type:

```text
JSON
```

Body:

```json
{
  "contents": [
    {
      "parts": [
        {
          "text": "You are Earth Relief Social Media Marketing Agent. Create one approval-first content idea for this trend. Trend: {{trend_name}}. Platform: {{platform}}. Business goal: {{business_goal}}. Return only JSON with these fields: suggestion, reason, expected_impact, risk, confidence, caption, cta."
        }
      ]
    }
  ]
}
```

Settings:

```text
Response in binary: false
Timeout: 60
Follow redirect: true
Continue on failure: false
```

## Supabase Insert HTTP Request

Method:

```text
POST
```

URL:

```text
{{SUPABASE_URL}}/rest/v1/approval_items
```

Headers:

```text
apikey: {{SUPABASE_SERVICE_ROLE_KEY}}
Authorization: Bearer {{SUPABASE_SERVICE_ROLE_KEY}}
Content-Type: application/json
Prefer: return=representation
```

Body type:

```text
JSON
```

Body:

```json
{
  "item_type": "social_content",
  "platform": "{{platform}}",
  "suggestion": "{{gemini_suggestion}}",
  "reason": "{{gemini_reason}}",
  "expected_impact": "{{gemini_expected_impact}}",
  "risk": "low",
  "confidence": 80,
  "status": "pending",
  "source_input": {
    "trend": "{{trend_name}}",
    "business_goal": "{{business_goal}}"
  },
  "ai_output": {
    "caption": "{{gemini_caption}}",
    "cta": "{{gemini_cta}}"
  }
}
```

Settings:

```text
Response in binary: false
Timeout: 60
Follow redirect: true
Continue on failure: false
```

## Safety Rule

This workflow only creates pending approval items.

It must not publish, schedule, or deploy anything automatically.
