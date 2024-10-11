set -e
echo "Checking for running, failing, and blocked builds..."
echo "Fetching the secret..."
echo $1
# curl -H 'Authorization: Bearer $1' -X GET 'https://api.buildkite.com/v2/organizations/lzrinc/pipelines/trigger-pipeline-action-integration-test/builds' 