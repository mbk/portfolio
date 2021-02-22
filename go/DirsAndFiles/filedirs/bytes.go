package filedirs

import (
	"bytes"
	"io"
	"os"
	"strings"
	"fmt"
)

func Capitalizer(f1, f2 *os.File) error {

	if _, err := f1.Seek(0, 0); err != nil {
		fmt.Println(err)
		return err
	}

	var tmp = new(bytes.Buffer)

	s := strings.ToUpper(tmp.String())

	if _, err := io.Copy(os.Stdout, tmp); err != nil {
		fmt.Println(err)
		return err
	}

	if _, err := io.Copy(f2, strings.NewReader(s)); err != nil {
		fmt.Println(err)
		return err
	}
	return nil
}

func CapitalizerExample() error {
	f1, err := os.Create("file1.txt")
	if err != nil {
		fmt.Println(err)
		return err
	}

	if _, err := f1.Write([]byte("This file contains a number of words and newlines")); err != nil {
		fmt.Println(err)
		return err
	}

	f2, err := os.Create("file2.txt")
	if err != nil {
		fmt.Println(err)
		return err
	}

	if err := Capitalizer(f1, f2); err != nil {
		fmt.Println(err)
		return err
	}

	if err := os.Remove("file1.txt"); err != nil {
		fmt.Println(err)
		return err
	}

	if err := os.Remove("file2.txt"); err != nil {
		fmt.Println(err)
		return err
	}
	return nil
}
