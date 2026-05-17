# Supabase Troubleshooting

## Error: connect ECONNREFUSED ... :5432

This usually means the Supabase SQL editor could not connect to the project database.

## First Check

Run a very small query first:

```sql
select now();
```

If this fails with the same connection error, the problem is database connectivity, not the SQL script.

## Common Causes

1. The project database is still starting or restoring.
2. The project is paused or temporarily unavailable.
3. Supabase dashboard session is stale.
4. The database needs a refresh/restart.
5. A temporary Supabase infrastructure issue exists.

## Fix Steps

1. Refresh the Supabase dashboard.
2. Go to Project Home and check if the database is still setting up or restoring.
3. If the project is paused, resume or restore it.
4. Wait a few minutes after creating or restoring a project.
5. Open SQL Editor again and run:

```sql
select now();
```

6. After that works, paste the full SQL content from `supabase/approval_items.sql`.

## Important

Do not paste only this text into SQL editor:

```text
supabase/approval_items.sql
```

That is only the file path. You must paste the actual SQL code inside the file.

## External App Connection Note

For external tools like Activepieces, prefer using Supabase Project URL and API keys first.

Direct database connection on port 5432 is not required for the first approval workflow.
