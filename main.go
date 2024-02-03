
package main

import (
	"runtime/debug"
	"strings"

	"github.com/365admin/365admin-test/app/magicapp"
)

func ExecutePowerShell(args ...any) (any, error) {
	return nil, nil
}
func main() {
	info, _ := debug.ReadBuildInfo()

	// split info.Main.Path by / and get the last element
	s1 := strings.Split(info.Main.Path, "/")
	name := s1[len(s1)-1]
	description := ``
	magicapp.Setup(".env")
	magicapp.RegisterServeCmd("365admin-test", description, "0.0.1", 8080)
	magicapp.Execute(name, "365admin-test", "")
}
