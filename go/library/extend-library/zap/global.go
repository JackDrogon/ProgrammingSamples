package main

import "go.uber.org/zap"

func main() {
	logger, _ := zap.NewDevelopment()
	zap.ReplaceGlobals(logger)

	zap.L().Info("status server stop sucess", zap.String("addr", "127.0.0.1"))
}
