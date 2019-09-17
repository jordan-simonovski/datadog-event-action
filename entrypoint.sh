#!/bin/bash
set -e

if [[ -z "$DATADOG_API_KEY" || -z "$EVENT_TITLE" || -z "$EVENT_TEXT" ]]; then
  echo "One or more required variables are missing: DATADOG_API_KEY, EVENT_TITLE, EVENT_TEXT"
  exit 1
fi

if [[ -z "$EVENT_PRIORITY" ]]; then
  # normal or low
  EVENT_PRIORITY="normal"
fi

if [[ -z "$EVENT_ALERT_TYPE" ]]; then
  # error, warning, info, and success.
  EVENT_ALERT_TYPE="info"
fi

curl  -X POST -H "Content-type: application/json" \
-d '{
      "title": "'"${EVENT_TITLE}"'",
      "text": "'"${EVENT_TEXT}"'",
      "priority": "'"${EVENT_PRIORITY}"'",
      "tags": "'"${EVENT_TAGS}"'",
      "alert_type": "'"${EVENT_ALERT_TYPE}"'",
      "source_type_name": "GITHUB"
}' \
"https://api.datadoghq.com/api/v1/events?api_key=${DATADOG_API_KEY}"