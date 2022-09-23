package db

import (
	"database/sql"
	"fmt"
	"os"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

func Connect() (error) {
	// Open a connection to the MySQL server using env vars
	db, err := sql.Open("mysql", os.Getenv("DB_STRING"))
	if err != nil {
		return fmt.Errorf("error opening connection: %v", err)
	}
	// Set important settings
	db.SetConnMaxLifetime(time.Minute * 3)
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)

	// Confirm that we actually connected as sql.Open doesn't return an error
	err = db.Ping()
	if err != nil {
		return fmt.Errorf("error verifying connection: %v", err)
	}

	// If there have been no errors, return nothing
	return nil
}