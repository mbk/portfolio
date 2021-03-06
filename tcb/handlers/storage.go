package handlers

import (
	"github.com/mbk/tcb/handlers/backends"
	"github.com/mbk/tcb/store"
	"io"
	"os"
)

type StorageBackend interface {
	GetReader(name string) (io.ReadCloser, error)
	StoreObject(name string, source *os.File, path string, metadata store.Store) error
	DeleteObject(name string) error
}

func GetBackend(backend string) StorageBackend {
	switch backend {
	case "local":
		return backends.GetFileStore()
	case "s3":
		return backends.GetS3Backend()
	case "swift":
		return backends.GetSwiftBackend()
	default:
		return backends.GetFileStore()
	}
}
