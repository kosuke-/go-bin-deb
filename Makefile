clean:
	rm -rf build
	rm -rf pkg-build
	rm -rf go-bin-deb_*.deb

build:
	go build -o build/amd64/go-bin-deb

deb: clean build
	go-bin-deb generate --arch amd64
