// The inventory is the tree, nested. A string is a leaf, a file or a
// directory whose contents are not checked; a struct is a directory whose
// children are enumerated, all of them, with `description` reserved for the
// directory itself. The onboarding PR fills this from the real top level.
package order

seats: tree: {
	description: "every entry, and why it exists"
	inventory: {
		".order":    "the board"
		".github":   {description: "GitHub's", CODEOWNERS: "the owners"}
		justfile:    "just order"
		"CLAUDE.md": "the words, one screen"
		"README.md": "here at onboarding: say why it exists"
	}
	gates: shape: {description: "the tree matches the inventory above, both directions, at every enumerated depth", run: "order:tree"}
	reviews: unexplained: "a new entry with no inventory entry here"
}
