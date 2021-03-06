#!/bin/bash

set -euxo pipefail

golint ./...
go test -cover -v ./...
go vet ./...
go vet -vettool="$(command -v shadow)" ./...
