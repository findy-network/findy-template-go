package main

import (
	"flag"

	"github.com/findy-network/findy-template-go/feature"
	"github.com/golang/glog"
)

func main() {
	_ = flag.Set("logtostderr", "true")
	flag.Parse()

	_ = feature.Feature()
	glog.Info("Hello Findy")
}
