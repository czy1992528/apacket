NAME?=apacket

all:
	go build -ldflags "-s -w"  -o $(NAME) *.go

debug:
	go build -o $(NAME) *.go

install:
	go build -ldflags "-s -w"  -o $(NAME) *.go
	mv $(NAME) $(GOPATH)/bin

.PHONY: clean
clean:
	rm -fr $(NAME) $(GOPATH)/bin/$(NAME)
