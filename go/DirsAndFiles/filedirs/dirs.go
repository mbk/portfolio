package filedirs

import (
	"errors"
	"fmt"
	"io"
	"os"
)

func Operate() error {
	if err := os.RemoveAll("example_dir"); err != nil {
		fmt.Println(err)
		return err
	}

	if err := os.Mkdir("example_dir", os.FileMode(0755)); err != nil {
		fmt.Println(err)
		return err
	}
	if err := os.Chdir(("example_dir")); err != nil {
		fmt.Println(err)
		return err
	}

	f, err := os.Create("test.txt")
	if err != nil {
		fmt.Println(err)
		return err
	}
	value := []byte("hello")
	count, err := f.Write(value)
	if err != nil {
		fmt.Println(err)
		return err
	}
	if count != len(value) {
		return errors.New("incorrect length returned from write")
	}

	f, err = os.Open("test.txt")
	if err != nil {
		fmt.Println(err)
		return err
	}

	io.Copy(os.Stdout, f)
	if err := f.Close(); err != nil {
		fmt.Println(err)
		return err
	}

	/*if err := os.Chdir("/tmp"); err != nil {
		fmt.Println(err)
		return err
	}*/

	if err := os.RemoveAll("./example_dir"); err != nil {
		fmt.Println(err)
		return err
	}

	return nil
}
