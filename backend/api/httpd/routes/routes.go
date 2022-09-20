// HomeBurrow/api/httpd/routes
package routes

import (
	"net/http"

	"github.com/go-chi/render"
)

type Message struct {
	Message string
}

func Landing(w http.ResponseWriter, r *http.Request) {
		responseObj := Message{Message: "Landing Page"}
		render.JSON(w, r, responseObj)
}