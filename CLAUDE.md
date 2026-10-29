# Order

This repo is an **account** of the order service: a board as a service. The
board is the `order` check on `main`'s head. A PR never changes it. What the
account says is in `.order/` and nowhere else; the service does the work.

- **owner** — a person CODEOWNERS names for `.order/` who can write to the repo, since GitHub drops a name that cannot. Owners merge rule changes and open and close reds.
- **seat** — one concern this account answers for; one file under `.order/seats/`. Red or green.
- **inventory** — what a seat covers, said once, in the seat's own grammar. The sweep holds it to the gates.
- **gate** — how a seat is checked: a script the service runs on a clone of every sha. Exit 0 is green. A gate with no result is red: unread is red.
- **broken** — the example beside every gate and review, under `.order/broken/<seat>/<name>/`, that the gate must red on; a built-in gate (`run: "order:<gate>"`) brings its own, in the package. A gate that passes its broken example is nonsense.
- **period** — 7 days. A result older than it is stale, and stale is red.
- **review** — a seat's prose rules for a diff, read on every PR. A finding is red on that PR, never on `main`.
- **sweep** — the service's walk over every seat, every 3 days. What it finds is a red an owner can close.
- **red** — an issue titled `red(<seat>): <why>`, opened by an owner or by a sweep. The seat is red while it is open.
- **colour** — green or red. Green is every gate green at the sha, its broken example red, the sweep inside the period, no open red. No gray, no off switch.

`just order` runs the package its justfile pins: it vets the seats against the
schema module `.order/cue.mod` names, runs every gate here and on its broken
example, and says what it saw. It needs node, cue and a GitHub token that reads
kazoo-order's packages (`GITHUB_TOKEN`, else `gh auth token`); the ruleset gate
also reads `ORDER_REPO`, `ORDER_TOKEN` (read-only on this repo) and `ORDER_APP`
(the service's App id).

Nothing written here can make a red quieter: the shape has no place to write it.
