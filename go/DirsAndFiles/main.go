package main

import (
	"./filedirs"
	"fmt"
)

func main() {
	if err := filedirs.Operate(); err != nil {
		fmt.Println("fileders operate error")
		panic(err)
	}

	if err := filedirs.CapitalizerExample(); err != nil {
		fmt.Println("Capitalizer error")
		panic(err)
	}
}
