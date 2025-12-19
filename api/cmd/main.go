package main

import (
	"fmt"
	"log"

	"github.com/marcelino-toma/gym-progress-tracking-api/foundation/conf"
)

func main() {
	fmt.Println("hello")

	cfg := conf.New()
	err:= cfg.Parse()
	if err != nil {
		log.Print(err)
	}
	fmt.Println(cfg)
}
