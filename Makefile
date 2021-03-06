C = gcc

CFLAGS = -Wall -Wextra -O2 -s -no-pie -lm -lreadline --std=c99

CBITS = $(shell getconf LONG_BIT)

BUILD__ = $(C) clibasic.c $(CFLAGS) -DB$(CBITS) -o clibasic && chmod +x ./clibasic
BUILD32 = $(C) clibasic.c -m32 $(CFLAGS) -DB32 -o clibasic && chmod +x ./clibasic

INSTALL_TO = "/usr/bin/clibasic"

INSTALL = sudo rm -f $(INSTALL_TO); sudo cp ./clibasic $(INSTALL_TO)

all: clean build run

all32: clean build32 run

build:
	$(BUILD__)

build32:
	$(BUILD32)

update:
	rm -rf clibasic-master clibasic.zip
	wget https://github.com/PQCraft/clibasic/archive/refs/heads/master.zip -O clibasic.zip
	unzip clibasic.zip
	rm -f clibasic.zip
	cp -rf clibasic-master/* ./
	rm -rf clibasic-master

install:
	if [ ! -f ./clibasic ]; then $(BUILD__); fi
	$(INSTALL)

install32:
	if [ ! -f ./clibasic ]; then $(BUILD32); fi
	$(INSTALL)

run:
	./clibasic

debug:
	./clibasic --debug

clean:
	rm -f ./clibasic
