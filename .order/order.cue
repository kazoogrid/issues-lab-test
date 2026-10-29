// The account's binding of the shared schema: the folders the vet found under
// broken/, closed here, and this account's seats and spirits fed into
// #Account, so its closed rules hold over them, at the version cue.mod/
// names. `just order` reads it; the service never does: it binds the seats to
// its own copy of the schema.
package order

import (
	"encoding/json"
	schema "github.com/kazoo-order/order-sdk/cue/schema:order"
)

_folders: string @tag(broken)
seats: {}
spirits: {}
account: schema.#Account & {folders: close(json.Unmarshal(_folders)), "seats": seats, "spirits": spirits}
