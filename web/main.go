package main

import "net/http"

func main() {
	http.HandleFunc("/", func(rw http.ResponseWriter, req *http.Request) {
		rw.Write([]byte("ok!"))
	})
	http.ListenAndServe(":3000", nil)
}
