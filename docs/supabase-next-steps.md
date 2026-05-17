# Supabase Next Steps

This guide starts after the `approval_items` table has been created successfully.

## Step 1: Confirm the test row

Open Supabase:

```text
Table Editor -> approval_items
```

You should see one pending test row for the hero-vs-villain trend.

## Step 2: Get Supabase API credentials

Open:

```text
Project Settings -> API
```

Copy these values:

```text
Project URL
anon public key
service_role key
```

Security rule:

```text
Never commit real keys to GitHub.
Use keys only inside Activepieces, Flowise, or secure environment variables.
```

## Step 3: Test insert through Supabase REST API

Endpoint pattern:

```text
{SUPABASE_URL}/rest/v1/approval_items
```

Headers:

```text
apikey: {SUPABASE_ANON_KEY_OR_SERVICE_ROLE_KEY}
Authorization: Bearer {SUPABASE_ANON_KEY_OR_SERVICE_ROLE_KEY}
Content-Type: application/json
Prefer: return=representation
```

Body example:

```json
{
  "item_type": "social_content",
  "platform": "instagram",
  "suggestion": "Create a reel where eco-friendly packaging becomes the hero and plastic pollution becomes the villain.",
  "reason": "This turns a viral conflict format into a sustainability story for business buyers.",
  "expected_impact": "Can increase awareness and create demand for sustainable packaging.",
  "risk": "low",
  "confidence": 85,
  "status": "pending",
  "source_input": {
    "trend": "hero defeats villain",
    "business_goal": "promote sustainable packaging"
  },
  "ai_output": {
    "cta": "Switch to Earth Relief sustainable packaging."
  }
}
```

## Step 4: Connect Activepieces

Create workflow:

```text
Manual Trigger
↓
AI Agent / HTTP Request
↓
Supabase Insert Row
↓
Notification
```

The first workflow should only create pending approval items.

## Step 5: Approval safety

Do not connect auto-posting yet.

V1 rule:

```text
AI suggestion -> pending approval -> founder decision -> draft only
```
