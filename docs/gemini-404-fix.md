# Gemini 404 Fix in Activepieces

## Problem

Activepieces returns:

```json
{
  "response": {
    "status": 404,
    "body": ""
  }
}
```

This usually means the Gemini endpoint URL or model name is wrong for the current API key/project.

## Step 1: Test Available Gemini Models

Create a temporary HTTP Request step.

Method:

```text
GET
```

URL:

```text
https://generativelanguage.googleapis.com/v1beta/models
```

Query parameter:

```text
key = YOUR_GEMINI_API_KEY
```

Headers:

```text
Content-Type: application/json
```

Body:

```text
none
```

Expected result:

A list of available model names.

Look for names like:

```text
models/gemini-1.5-flash
models/gemini-2.0-flash
models/gemini-2.5-flash
```

## Step 2: Use One Available Model

If the model list shows:

```text
models/gemini-1.5-flash
```

then use this POST URL:

```text
https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent
```

If the list shows:

```text
models/gemini-2.0-flash
```

then use:

```text
https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent
```

If the list shows:

```text
models/gemini-2.5-flash
```

then use:

```text
https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent
```

## Step 3: POST Request Settings

Method:

```text
POST
```

Headers:

```text
Content-Type: application/json
```

Query parameter:

```text
key = YOUR_GEMINI_API_KEY
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
          "text": "Return only valid JSON. Create one Earth Relief Instagram reel idea for the trend: Hero defeats villain. Fields: suggestion, reason, expected_impact, risk, confidence, caption, cta."
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

## Most Common Cause

Do not assume every API key supports every Gemini model.

Always run the models list endpoint first and copy an available model name exactly.
