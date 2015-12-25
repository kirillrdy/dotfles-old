package main

import (
	"log"
	"os/user"
	"runtime"
)

var modes = struct {
	user   string
	system string
}{
	"user",   // User mode is for installing user specific configurations
	"system", // System mode is for configuring the system
}

func main() {
	var mode string
	log.Printf("Detected OS: %#v", runtime.GOOS)

	user, err := user.Current()
	if err != nil {
		log.Panic(err)
	}

	log.Printf("User: %#v", user.Username)
	if user.Username == "root" {
		mode = modes.system
	} else {
		mode = modes.user
	}

	log.Printf("Setting mode: %#v", mode)

	//system
	sysutils/screen
	tig
	git
	x11/xorg
	dwm
	sterm
	firefox
	emacs


}
