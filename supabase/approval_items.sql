-- Earth Relief AI Growth OS
-- Supabase table for approval-first AI workflow

create extension if not exists pgcrypto;

create table if not exists public.approval_items (
  id uuid primary key default gen_random_uuid(),

  item_type text not null check (
    item_type in (
      'social_content',
      'seo_suggestion',
      'website_change',
      'workflow_action',
      'sales_reply',
      'content_idea'
    )
  ),

  platform text check (
    platform is null or platform in (
      'instagram',
      'facebook',
      'linkedin',
      'youtube',
      'website',
      'google_search',
      'multiple',
      'other'
    )
  ),

  suggestion text not null,
  reason text,
  expected_impact text,

  risk text not null default 'medium' check (
    risk in ('low', 'medium', 'high')
  ),

  confidence numeric(5,2) not null default 0 check (
    confidence >= 0 and confidence <= 100
  ),

  status text not null default 'pending' check (
    status in ('pending', 'approved', 'rejected', 'modify_requested')
  ),

  ai_output jsonb,
  source_input jsonb,
  founder_notes text,
  approved_at timestamptz,
  rejected_at timestamptz,
  modified_at timestamptz,

  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_approval_items_status
on public.approval_items(status);

create index if not exists idx_approval_items_item_type
on public.approval_items(item_type);

create index if not exists idx_approval_items_created_at
on public.approval_items(created_at desc);

create index if not exists idx_approval_items_platform
on public.approval_items(platform);

create or replace function public.set_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists trg_approval_items_updated_at on public.approval_items;

create trigger trg_approval_items_updated_at
before update on public.approval_items
for each row
execute function public.set_updated_at();

-- Optional: enable Row Level Security.
-- Keep disabled during first local testing if you are not using Supabase Auth yet.
-- alter table public.approval_items enable row level security;

-- Example insert for first test.
insert into public.approval_items (
  item_type,
  platform,
  suggestion,
  reason,
  expected_impact,
  risk,
  confidence,
  status,
  source_input,
  ai_output
) values (
  'social_content',
  'instagram',
  'Create a reel where sustainable packaging defeats plastic pollution using a hero-vs-villain trend.',
  'This adapts a familiar viral structure into an Earth Relief sustainability message without copying the original trend.',
  'Can increase awareness among business owners and create demand for eco-friendly packaging.',
  'low',
  82,
  'pending',
  '{"trend":"Hero defeats villain","business_goal":"Promote sustainable packaging"}'::jsonb,
  '{"cta":"Switch to Earth Relief biodegradable packaging before pollution wins."}'::jsonb
);
