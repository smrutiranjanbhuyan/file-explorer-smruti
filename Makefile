all:
	mkdir -p build
	g++ src/main.cpp src/FileManager.cpp src/UIManager.cpp -Iinclude -lncurses -o build/file_explorer

run:
	build/file_explorer
