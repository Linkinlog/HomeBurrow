package httpd

import (
	"net/http"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"HomeBurrow/api/httpd/routes"
)

func Httpd() {
	r := chi.NewRouter()
	r.Use(middleware.Logger)

	r.Route("/api", func(r chi.Router) {
		r.Get("/", routes.Landing)
	} )
	http.ListenAndServe(":8080", r)
}
