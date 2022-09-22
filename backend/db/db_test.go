package db

import (
	"testing"
)

func TestConnect(t *testing.T) {
	err := Connect()
	if err != nil {
		t.Fatalf(`db.Connect failed with error: %v`, err)
	}
}