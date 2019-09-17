# 🐶 DataDog Events - GitHub Action

A GitHub Action that triggers DataDog Events.

## Usage

```
- name: DataDog Event
  uses: jordan-simonovski/datadog-event-action@1.0.2
  env:
    DATADOG_API_KEY: ${{ secrets.DD_API_KEY }}
    EVENT_TITLE: Build Succeeded
    EVENT_TEXT: We did it! 🎉
    EVENT_PRIORITY: (Can be one of normal or low. Default: normal)
    EVENT_TAGS: (optional)
    EVENT_ALERT_TYPE: (Can be one of error, warning, info, or success. Default: info)
```

### Event Tags

Event Tags should be an array of different key/value pairs.

Example:
```
EVENT_TAGS: "['app:test','env:production']"
```