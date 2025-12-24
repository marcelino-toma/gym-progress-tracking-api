package conf

import (
	"errors"
	"fmt"

	"github.com/ardanlabs/conf/v3"
)

const namespace = "GPT"

type Config struct {
	Web web
}

type web struct {
	APIHost string `conf:"default:0.0.0.0:8081,env:API_HOST"`
}

func New() *Config {
	return &Config{}
}

func (c *Config) Parse() error {
	if help, pErr := conf.Parse(namespace, c); pErr != nil {
		if errors.Is(pErr, conf.ErrHelpWanted) {
			fmt.Println(help)

			return nil
		}
		return pErr
	}
	return nil
}
