gh api graphql -F owner='mintarchit' -F name='gh-contribs' -f query='
  query($name: String!, $owner: String!) {
    repository(owner: $owner, name: $name) {
      releases(first: 7){
        nodes { tagName }
      }
    }
  }
' --jq '..|.nodes' | grep . | bat
