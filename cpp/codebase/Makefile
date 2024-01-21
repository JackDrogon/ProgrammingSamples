.DEFAULT_GOAL := debug

.PHONY: debug
debug:
	@echo "Building debug..."
	@cmake -B _build/debug -GNinja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug -DARCHIMEDES_BUILD_TESTING=ON -DARCHIMEDES_BUILD_EXAMPLES=ON . && cmake --build _build/debug --config Debug -j $(nproc)
