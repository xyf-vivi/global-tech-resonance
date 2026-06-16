#!/bin/bash
cd "D:/workboddy/2026-06-09-22-03-11/gh-pages"
for i in $(seq 1 40); do
  echo "[$(date '+%H:%M:%S')] Attempt $i..."
  if git push origin main 2>&1; then
    echo "SUCCESS at attempt $i"
    exit 0
  fi
  echo "Failed, waiting 180s..."
  sleep 180
done
echo "All 40 attempts failed"
