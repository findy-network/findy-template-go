
build:
	go build ./...

vet:
	go vet ./...

shadow:
	@echo Running govet
	go vet -vettool=$(GOPATH)/bin/shadow ./...
	@echo Govet success

check_fmt:
	$(eval GOFILES = $(shell find . -name '*.go'))
	@gofmt -l $(GOFILES)

lint:
	@golangci-lint run

lint_e:
	@$(GOPATH)/bin/golint ./... | grep -v export | cat

test:
	go test -v -p 1 -failfast ./...

logged_test:
	go test -v -p 1 -failfast ./... -args -logtostderr=true -v=10

test_cov_out:
	go test \
		-coverpkg=github.com/findy-network/findy-template-go/... \
		-coverprofile=coverage.txt  \
		-covermode=atomic \
		./...

test_cov: test_cov_out
	go tool cover -html=coverage.txt

check: check_fmt vet shadow

dbuild:
	docker build \
		-t findy-template-go \
		.

drun:
	docker run -it --rm findy-template-go

scan:
	@./scripts/scan.sh $(ARGS)
