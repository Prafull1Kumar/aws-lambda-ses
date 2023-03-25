
sam deploy --parameter-overrides $(jq -r 'to_entries[] | "\(.key)=\(.value)"' ./env.json)