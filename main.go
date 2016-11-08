package main

import (
	"log"
	"net/http"

	"github.com/dimiro1/health"
)

func main() {

	healthHandler := health.NewHandler()
	http.Handle("/health/", healthHandler)
	http.Handle("/hello/", &helloHandler{
		version: "0.2",
	})

	if err := http.ListenAndServe("0.0.0.0:5000", nil); err != nil {
		log.Fatal("Could not start the server")
	}
}
