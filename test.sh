
 snyk test --severity=medium --json-file-output=results.json || true
$(jq -r '.vulnerabilities | map(.| select(.severity=="high" or .severity=="critical")) | length' results.json)
