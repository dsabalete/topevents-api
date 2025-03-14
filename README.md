# TopEvents-API

## Description

This is a simple API that allows you to read events stored in a Supabase DB by using a simple Edge Function.

## Usage

To use this API, you need to have a Supabase account and a project with a table called `events` with the following columns:

- `id` (INT8)
- `name` (TEXT)
- `image` (TEXT)
- `link` (TEXT)

You also need to have a Supabase API Key with the following permissions:

- `events:select`

To deploy this API, you need to have the following environment variables:

- `SUPABASE_URL`: The URL of your Supabase project
- `SUPABASE_ANON_KEY`: The Supabase API Key

You can test this API by running the following command:

```bash
supabase functions serve --no-verify-jwt
```

You can deploy this API by running the following command:

```bash
supabase functions deploy api
```
