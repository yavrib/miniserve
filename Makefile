.PHONY: build-linux
build-linux:
	cargo build --target x86_64-unknown-linux-musl --release
	strip target/x86_64-unknown-linux-musl/release/miniserve
	upx target/x86_64-unknown-linux-musl/release/miniserve

.PHONY: build-win
build-win:
	RUSTFLAGS="-C linker=x86_64-w64-mingw32-gcc" cargo build --target x86_64-pc-windows-gnu --release
	strip target/x86_64-pc-windows-gnu/release/miniserve.exe
	upx target/x86_64-pc-windows-gnu/release/miniserve.exe

.PHONY: build-apple
build-apple:
	cargo build --target x86_64-apple-darwin --release
	strip target/x86_64-apple-darwin/release/miniserve
	upx target/x86_64-apple-darwin/release/miniserve
