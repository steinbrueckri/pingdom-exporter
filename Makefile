.PHONY: build
build:
	goreleaser release --snapshot --clean

.PHONY: test
test:
	go vet ./...
	go test -coverprofile=coverage.out ./...
	go tool cover -func=coverage.out
