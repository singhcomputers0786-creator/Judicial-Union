# Judicial Union Android App

A starter Android app project with case entry and WhatsApp reminder handoff.

## Build
This repository includes a lightweight `gradlew` bootstrap script. On Linux/GitHub Actions it downloads Gradle 8.9 and runs the build.

```bash
chmod +x gradlew
./gradlew assembleDebug
```

The APK should be at `app/build/outputs/apk/debug/app-debug.apk`.

WhatsApp reminders open a prefilled message; the user must tap Send manually.
