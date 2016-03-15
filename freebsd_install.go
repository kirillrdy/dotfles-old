package main

import (
	"fmt"
	"log"
	"os"
	"os/exec"
	"strings"
)

var verbose bool = false

func execute(progname string, args ...string) {
	log.Printf("Executing \"%v %v\"\n", progname, strings.Join(args, " "))
	command := exec.Command(progname, args...)
	if verbose {
		command.Stdout = os.Stdout
		command.Stdin = os.Stdin
		command.Stderr = os.Stderr
	}
	err := command.Run()
	if err != nil {
		log.Fatal(err)
	}
}

func install(packageName string) {
	execute("pkg", "install", "-y", packageName)
}

func enable_rc(rcVar string) {
	yes := fmt.Sprintf("%s=YES", rcVar)
	execute("sysrc", yes)
}

func main() {
	//MDSN, virtual box
	packages := []string{
		"xorg",
		"vim",
		"screen",
		"git",
		"tig",
		"cmake",
		"mercurial",
		"firefox",
		"chromium",
		"gnome3-lite",
		"virtualbox-ose",
	}

	rcYesVars := []string{
		"avahi_daemon_enable",
		"dbus_enable",
		"hald_enable",
		"postgresql_enable",
		"sshd_enable",
		"vboxnet_enable",
		"gnome_enable",
	}

	for _, rcVar := range rcYesVars {
		enable_rc(rcVar)
	}

	for _, packageName := range packages {
		install(packageName)
	}
}
