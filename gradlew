#!/usr/bin/env sh
set -eu
GRADLE_VERSION="8.9"
DIST_DIR="${HOME}/.gradle/wrapper/dists/gradle-${GRADLE_VERSION}-bin/manual"
GRADLE_HOME="${DIST_DIR}/gradle-${GRADLE_VERSION}"
if [ ! -x "${GRADLE_HOME}/bin/gradle" ]; then
  mkdir -p "${DIST_DIR}"
  ZIP="${DIST_DIR}/gradle-${GRADLE_VERSION}-bin.zip"
  if command -v curl >/dev/null 2>&1; then
    curl -fL "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" -o "${ZIP}"
  else
    wget -O "${ZIP}" "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"
  fi
  unzip -q -o "${ZIP}" -d "${DIST_DIR}"
fi
exec "${GRADLE_HOME}/bin/gradle" "$@"
