

SDK_VERSION=5.1
IPHONE_SDK=-sdk iphoneos$(SDK_VERSION)
SIMULATOR_SDK=-sdk iphonesimulator$(SDK_VERSION)

clean:
	cd src/scripts ; ./Clean.command ; cd ../..

build: 
	cd src/scripts && ./Build.command $(SDK_VERSION) Release && ./Build.command $(SDK_VERSION) Debug && cd ../..

build_three20:
	cd src/Three20
	xcodebuild -target Three20 -configuration Release $(IPHONE_SDK)
	xcodebuild -target Three20 -configuration Debug $(IPHONE_SDI)
	xcodebuild -target Three20 -configuration Release $(SIMULATOR_SDK)
	xcodebuild -target Three20 -configuration Debug $(SIMULATOR_SDK)


