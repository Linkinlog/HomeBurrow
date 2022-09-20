package db

import (
	"database/sql"
	"time"
	"os"
	_ "github.com/go-sql-driver/mysql"
)

func Connect() {
	db, err := sql.Open("mysql", os.Getenv("DB_STRING"))
	if err != nil {
		panic(err)
	}
	// See "Important settings" section.
	db.SetConnMaxLifetime(time.Minute * 3)
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)
	// Prepare statement for reading data
	stmtOut, err := db.Prepare("SELECT * FROM sys")
	if err != nil {
		panic(err.Error()) // proper error handling instead of panic in your app
	}
	defer stmtOut.Close()
}