# Distribb Integration for Earth Relief

This integration uses the public `Bomx/distribb-skill` API workflow for:

- project discovery
- backlink status checks
- backlink-target discovery
- keyword and internal-link research
- article staging

It does **not** automatically insert or publish reciprocal links. Every external link must pass the Earth Relief editorial review before it is added to a production article.

## Why approval is required

Distribb's backlink network rewards projects for linking to other network members. Reciprocal or automated link placement can create search-policy risk when links exist mainly to influence rankings rather than help readers.

Earth Relief therefore uses Distribb in controlled mode:

1. Query status and candidate targets.
2. Verify that a candidate page is genuinely relevant to the article.
3. Verify factual claims on the destination page.
4. Reject unrelated, low-quality, misleading, gambling, adult, finance, health-claim, or otherwise risky sites.
5. Decide whether the link is editorial, sponsored, nofollow, or unsuitable.
6. Require human approval before article publication.
7. Track the resulting backlink and referral value separately from ranking claims.

## Required secrets

Do not commit live credentials.

Create these as local environment variables or GitHub Actions secrets:

```text
DISTRIBB_API_KEY
DISTRIBB_PROJECT_ID
```

`DISTRIBB_PROJECT_ID` is optional for local discovery because the helper script can list projects first.

## First-time setup

1. Create and complete onboarding at Distribb.
2. Add `https://earthrelief.in/` as the website.
3. Connect Google Search Console.
4. Connect the Earth Relief blog through a supported CMS integration or custom webhook.
5. Keep automatic publishing disabled during the pilot.
6. Add the API key as a secret, never in source control.
7. Run the manual GitHub workflow or the local script.

## Local commands

```bash
cp integrations/distribb/.env.example integrations/distribb/.env
# Add the real values to .env, then:
set -a
source integrations/distribb/.env
set +a

bash integrations/distribb/distribb.sh projects
bash integrations/distribb/distribb.sh status
bash integrations/distribb/distribb.sh targets "biodegradable packaging india"
```

## Earth Relief backlink priorities

Use backlinks to strengthen pages that can convert qualified B2B traffic, not only the homepage.

| Priority | Search intent | Preferred Earth Relief target |
|---|---|---|
| 1 | biodegradable carry bags supplier India | live cornstarch carry-bag product/category page |
| 2 | sugarcane bagasse tableware bulk India | live bagasse tableware category page |
| 3 | compostable packaging for restaurants India | Brands & Cafes solution page |
| 4 | eco-friendly wedding tableware bulk | Events & Weddings solution page |
| 5 | sustainable corporate packaging India | Corporate Buyers solution page |
| 6 | alternatives to single-use plastic India | evidence-led pillar article or sustainability page |

Confirm the exact canonical URL before outreach or publication.

## Link acceptance checklist

A candidate external link is acceptable only when all answers are yes:

- Is the destination directly relevant to the paragraph?
- Would the link still be useful if search engines ignored it?
- Is the destination a legitimate, maintained business or authoritative resource?
- Can the statement around the link be verified without exaggeration?
- Is the anchor descriptive and natural?
- Has a human reviewed the destination page?
- Is the relationship disclosed or qualified when required?

## Success metrics

Track monthly:

- referring domains gained
- backlinks that remain live after 30 and 90 days
- topical relevance of referring pages
- referral sessions and qualified enquiries
- target-page impressions, average position, and non-brand clicks in Search Console
- rejected candidate rate
- percentage of links pointing to commercial pages versus useful editorial assets

Do not use Domain Rating alone as the success metric.