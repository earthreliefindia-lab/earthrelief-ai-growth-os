#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${DISTRIBB_BASE_URL:-https://distribb.io/api/v1}"
API_KEY="${DISTRIBB_API_KEY:-}"
PROJECT_ID="${DISTRIBB_PROJECT_ID:-}"

if [[ -z "$API_KEY" ]]; then
  echo "Error: DISTRIBB_API_KEY is not set." >&2
  exit 1
fi

command -v curl >/dev/null 2>&1 || {
  echo "Error: curl is required." >&2
  exit 1
}

command -v jq >/dev/null 2>&1 || {
  echo "Error: jq is required." >&2
  exit 1
}

api_get() {
  local path="$1"
  curl --fail --silent --show-error \
    -H "Authorization: Bearer ${API_KEY}" \
    "${BASE_URL}${path}"
}

require_project_id() {
  if [[ -z "$PROJECT_ID" ]]; then
    echo "Error: DISTRIBB_PROJECT_ID is not set." >&2
    echo "Run: bash integrations/distribb/distribb.sh projects" >&2
    exit 1
  fi
}

urlencode() {
  jq -nr --arg value "$1" '$value|@uri'
}

usage() {
  cat <<'EOF'
Usage:
  distribb.sh projects
  distribb.sh status
  distribb.sh targets "keyword"
  distribb.sh context
  distribb.sh integrations

This helper only reads data. It does not create articles, add links, or publish content.
EOF
}

case "${1:-}" in
  projects)
    api_get "/projects" | jq .
    ;;

  status)
    require_project_id
    api_get "/backlinks/status?project_id=$(urlencode "$PROJECT_ID")" | jq .
    ;;

  targets)
    require_project_id
    keyword="${2:-}"
    if [[ -z "$keyword" ]]; then
      echo "Error: provide a relevant keyword." >&2
      exit 1
    fi
    api_get "/backlink-targets?project_id=$(urlencode "$PROJECT_ID")&keyword=$(urlencode "$keyword")" | jq .
    ;;

  context)
    require_project_id
    api_get "/business-context?project_id=$(urlencode "$PROJECT_ID")" | jq .
    ;;

  integrations)
    require_project_id
    api_get "/integrations?project_id=$(urlencode "$PROJECT_ID")" | jq .
    ;;

  *)
    usage
    exit 1
    ;;
esac
