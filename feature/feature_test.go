package feature_test

import (
	"testing"

	"github.com/findy-network/findy-template-go/feature"
)

func TestFeature(t *testing.T) {
	t.Parallel()

	if err := feature.Feature(); err != nil {
		t.Errorf("Feature test failed %s", err)
	}
}
