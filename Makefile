build:
	swift build -c release
run:
	swift build -c release
	./.build/armv7-unknown-linux-gnueabihf/release/LED-Blink

build-arm:
	swift build -c release --destination /Library/Developer/Destinations/armhf-5.0-RELEASE.json

deploy-project:
	scp -r ./* pi@192.168.100.245:~/led-blink

deploy:
	scp .build/armv7-unknown-linux-gnueabihf/release/LED-Blink pi@192.168.100.245:~/build

dave:
	scp .build/armv7-unknown-linux-gnueabihf/release/LED-Blink lasvad@192.168.100.247:~/build

dave-project:
	scp -r ./* lasvad@192.168.100.247:~/led-blink
	