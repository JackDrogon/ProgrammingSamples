package main

import (
	"flag"
	"fmt"
	"os"

	"github.com/golang/glog"
)

func usage() {
	fmt.Fprintf(os.Stderr, "Usage: ./Program -stderrthreshold=[INFO|WARNING||ERROR|FATEL] -log_dir=[string]\n")
	flag.PrintDefaults()
	os.Exit(2)
}

func init() {
	flag.Usage = usage
	flag.Parse()
}

func main() {
	printLines := 100
	for i := 0; i < printLines; i++ {
		glog.Errorf("Error Line:%d\n", i+1)
		glog.Infof("Info Line:%d\n", i+1)
		glog.Warningf("Warning Line:%d\n", i+1)
	}
	glog.Flush()
}
