.PHONY : all, rebuild, clean
all : build/protogame
rebuild : clean all
clean :
	-rm -R build/*
# main target
build/protogame : build/bpgw/display.o build/bpgw/vector2d.o build/bpgw/eventhandler.o build/bpgw/game.o build/protogame.o
	g++ -o build/protogame  build/bpgw/display.o build/bpgw/vector2d.o build/bpgw/eventhandler.o build/bpgw/game.o build/protogame.o -lSDL2 -lSDL2_image -lGL
# object targets
build/bpgw/display.o : build/bpgw/ src/bpgw/display.cpp src/bpgw/display.h src/bpgw/vector2d.h
	g++ -o build/bpgw/display.o -c src/bpgw/display.cpp -Wno-write-strings
build/bpgw/vector2d.o : build/bpgw/ src/bpgw/vector2d.cpp src/bpgw/vector2d.h
	g++ -o build/bpgw/vector2d.o -c src/bpgw/vector2d.cpp -Wno-write-strings
build/bpgw/eventhandler.o : build/bpgw/ src/bpgw/eventhandler.cpp src/bpgw/eventhandler.h
	g++ -o build/bpgw/eventhandler.o -c src/bpgw/eventhandler.cpp -Wno-write-strings
build/bpgw/game.o : build/bpgw/ src/bpgw/game.cpp src/bpgw/game.h src/bpgw/eventhandler.h src/bpgw/vector2d.h src/bpgw/bpset.h src/bpgw/bplist.h src/bpgw/display.h src/bpgw/vector2d.h
	g++ -o build/bpgw/game.o -c src/bpgw/game.cpp -Wno-write-strings
build/protogame.o : build/ src/protogame.cpp src/protogame.h src/bpgw/game.h src/bpgw/eventhandler.h src/bpgw/vector2d.h src/bpgw/bpset.h src/bpgw/bplist.h
	g++ -o build/protogame.o -c src/protogame.cpp -Wno-write-strings
# object dir targets
build/bpgw/ :
	mkdir -p build/bpgw
build/ :
	mkdir -p build
