package main

import (
	"HomeBurrow/api/httpd"
	"HomeBurrow/db"
)

func main() {
	db.Connect()
	httpd.Httpd()
}