set -e
echo "Checking for running, failing, and blocked builds..."
echo "Fetching the secret..."
TOKEN=$1
echo "$(curl -H 'Content-Type: application/json' -H "Authorization: Bearer $TOKEN" -X GET 'https://api.buildkite.com/v2/organizations/lzrinc/pipelines/trigger-pipeline-action-integration-test/builds?state[]=running&state[]=blocked&meta_data\[test\]=dummy'  | jq '.[].web_url')"