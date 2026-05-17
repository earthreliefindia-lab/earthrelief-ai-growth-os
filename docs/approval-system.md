# Approval System

The approval system is the safety layer of Earth Relief AI Growth OS.

## Purpose

The AI can suggest ideas, but the founder controls every public action.

## Approval Flow

```text
AI suggestion
↓
Approval item created
↓
Founder reviews
↓
Approve / Reject / Modify
↓
Approved item moves to next workflow
```

## Approval Status Values

```text
pending
approved
rejected
modify_requested
```

## Required Approval Card

Every AI output must include:

```text
Suggestion:
Reason:
Expected Impact:
Risk:
Confidence:
Action Required:
[Approve] [Reject] [Modify]
```

## Natural Language Commands

The system should understand simple founder replies:

```text
approve
yes
ok
reject
no
rewrite
change CTA
make it more premium
make it more emotional
make it LinkedIn style
make it Instagram style
```

## Risk Rules

### Low Risk

- Caption ideas
- Hashtag ideas
- Blog topics
- Internal SEO suggestions

### Medium Risk

- Public social media posts
- Website copy changes
- Product positioning
- B2B sales claims

### High Risk

- Legal claims
- Compliance claims
- Price claims
- Health or hygiene claims
- Competitor comparisons
- Production website deployment

## Automation Rules

```text
Pending = no action
Approved = move to draft/task stage
Rejected = store for learning
Modify Requested = send back to AI for revision
```

## V1 Safety Rule

Approved social content should become a Postiz draft, not an instant live post.

Approved SEO suggestions should become website tasks, not direct production edits.
