help : Makefile
	@echo "\nAVAILABLE COMMANDS\n"
	@cat Makefile | grep "##" | sed -n 's/^## /make /p' | column -t -s ':' && echo ""

.DEFAULT_GOAL := help

## recognition_build: build docker image.
recognition_build:
	docker build -t imgrecognition .

## recognition_run: run image recognition container.
recognition_run:
	docker run -it -p 8080:8080 imgrecognition

## recognition_build_run: all in one - build and run docker image recognition.
recognition_build_run:
	make recognition_build && make recognition_run

## bot_run: run bot server (for incoming images and send them into recognition server).
bot_run:
	go run cmd/bot/main.go
