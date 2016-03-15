package main

import (
	"fmt"
	"log"
	"os"
	"os/exec"
)

func execute(progname string, args ...string) {
	log.Printf("Executing %v %v", progname, args)
	command := exec.Command(progname, args...)
	command.Stdout = os.Stdout
	command.Stdin = os.Stdin
	command.Stderr = os.Stderr
	err := command.Run()
	if err != nil {
		log.Panic(err)
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
		"gnome3",
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
