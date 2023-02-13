package feature

import (
	"github.com/lainio/err2"
	"github.com/lainio/err2/assert"
)

func Feature() (err error) {
	defer err2.Handle(&err)

	assert.P.True(true != false, "True is false")

	return err
}
