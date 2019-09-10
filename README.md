# 🐶 DataDog Events - GitHub Action

A GitHub Action that triggers DataDog Events.

## Usage

```
- name: DataDog Event
  env:
    DATADOG_API_KEY: ${{ secrets.DD_API_KEY }}
    EVENT_TITLE: Build Succeeded
    EVENT_TEXT: We did it! 🎉
    EVENT_PRIORITY: (Can be one of normal or low. Default: normal)
    EVENT_TAGS: (optional)
    EVENT_ALERT_TYPE: (Can be one of error, warning, info, or success. Default: info)
```