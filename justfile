set shell := ["bash", "-euo", "pipefail", "-c"]

# the reading by hand, as the service takes it: the package vets the seats
# against the schema module .order/cue.mod names, then runs every gate here and
# on its broken example. Needs node and cue, and a GitHub token that reads
# kazoo-order's packages in GITHUB_TOKEN (`gh auth token` works); the ruleset
# gate also reads ORDER_REPO, ORDER_TOKEN, ORDER_APP.
order:
    export GITHUB_TOKEN="${GITHUB_TOKEN:-$(gh auth token)}"; npx --yes --registry=https://npm.pkg.github.com --//npm.pkg.github.com/:_authToken="$GITHUB_TOKEN" @kazoo-order/order@0.2.1
