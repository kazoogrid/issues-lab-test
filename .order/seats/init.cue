// The wiring the board stands on. No inventory, gates only.
package order

seats: init: {
	description: "the wiring the board stands on"
	gates: {
		ruleset:   {description: "main requires the order check from this App, PR required, code-owner review, no bypass", run: "order:ruleset"}
		owners:    {description: "CODEOWNERS names .order/** and itself with two owners each, people who can write here", run: "order:owners"}
		pins:      {description: "every uses: under .github/workflows is a sha, or ./ in this repo", run: "order:pins"}
		scorecard: {description: "Scorecard's Dangerous-Workflow and Token-Permissions read 10 on the tree", run: "order:scorecard"}
	}
	reviews: noUnpinned: "a new uses: that is not a sha and not ./ in this repo"
}
