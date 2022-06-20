package main

import (
	"fmt"
	"log"
	"net/http"
)

func main(){
	http.HandleFunc("/codeeducation", func(w http.ResponseWriter, r *http.Request){
		fmt.Fprintf(w, "CodeEducation Rocks!")
	})
	fmt.Printf("Server running (port=8080), route:http://localhost:8080/codeeducation\n")
		if err := http.ListenAndServe(":8080", nil); err != nil {
			log.Fatal(err)
		}
}