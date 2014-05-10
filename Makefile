.PHONY : all, rebuild, clean
all : build/protogame
rebuild : clean all
clean :
	-rm -R build/*
# main target
build/protogame : build/mystage.o build/bpgw/camera2d.o build/bpgw/display.o build/bpgw/texture.o build/bpgw/sprite.o build/bpgw/vector2d.o build/bpgw/spritemanager.o build/bpgw/font.o build/bpgw/rect.o build/bpgw/game.o build/bpgw/eventmanager.o build/bpgw/color.o build/bpgw/utils.o build/bpgw/stage.o build/protogame.o | build/
	g++ -o build/protogame $(shell freetype-config --libs) build/mystage.o build/bpgw/camera2d.o build/bpgw/display.o build/bpgw/texture.o build/bpgw/sprite.o build/bpgw/vector2d.o build/bpgw/spritemanager.o build/bpgw/font.o build/bpgw/rect.o build/bpgw/game.o build/bpgw/eventmanager.o build/bpgw/color.o build/bpgw/utils.o build/bpgw/stage.o build/protogame.o -lSDL2 -lSDL2_image -lGL
# object targets
build/mystage.o : src/mystage.cpp src/mystage.h src/bpgw/stage.h src/protogame.h src/bpgw/game.h src/bpgw/eventmanager.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/stage.h src/bpgw/spritemanager.h src/bpgw/sprite.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h | build/
	g++ -o build/mystage.o -c src/mystage.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/camera2d.o : src/bpgw/camera2d.cpp src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h | build/bpgw/
	g++ -o build/bpgw/camera2d.o -c src/bpgw/camera2d.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/display.o : src/bpgw/display.cpp src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/game.h src/bpgw/eventmanager.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/stage.h src/bpgw/spritemanager.h src/bpgw/sprite.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h src/bpgw/vector2d.h | build/bpgw/
	g++ -o build/bpgw/display.o -c src/bpgw/display.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/texture.o : src/bpgw/texture.cpp src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/utils.h | build/bpgw/
	g++ -o build/bpgw/texture.o -c src/bpgw/texture.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/sprite.o : src/bpgw/sprite.cpp src/bpgw/sprite.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h | build/bpgw/
	g++ -o build/bpgw/sprite.o -c src/bpgw/sprite.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/vector2d.o : src/bpgw/vector2d.cpp src/bpgw/vector2d.h | build/bpgw/
	g++ -o build/bpgw/vector2d.o -c src/bpgw/vector2d.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/spritemanager.o : src/bpgw/spritemanager.cpp src/bpgw/spritemanager.h src/bpgw/sprite.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h | build/bpgw/
	g++ -o build/bpgw/spritemanager.o -c src/bpgw/spritemanager.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/font.o : src/bpgw/font.cpp src/bpgw/font.h src/bpgw/game.h src/bpgw/eventmanager.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/stage.h src/bpgw/spritemanager.h src/bpgw/sprite.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/utils.h | build/bpgw/
	g++ -o build/bpgw/font.o -c src/bpgw/font.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/rect.o : src/bpgw/rect.cpp src/bpgw/rect.h src/bpgw/vector2d.h | build/bpgw/
	g++ -o build/bpgw/rect.o -c src/bpgw/rect.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/game.o : src/bpgw/game.cpp src/bpgw/game.h src/bpgw/eventmanager.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/stage.h src/bpgw/spritemanager.h src/bpgw/sprite.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h src/bpgw/vector2d.h | build/bpgw/
	g++ -o build/bpgw/game.o -c src/bpgw/game.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/eventmanager.o : src/bpgw/eventmanager.cpp src/bpgw/eventmanager.h | build/bpgw/
	g++ -o build/bpgw/eventmanager.o -c src/bpgw/eventmanager.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/color.o : src/bpgw/color.cpp src/bpgw/color.h | build/bpgw/
	g++ -o build/bpgw/color.o -c src/bpgw/color.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/utils.o : src/bpgw/utils.cpp src/bpgw/utils.h | build/bpgw/
	g++ -o build/bpgw/utils.o -c src/bpgw/utils.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/bpgw/stage.o : src/bpgw/stage.cpp src/bpgw/stage.h | build/bpgw/
	g++ -o build/bpgw/stage.o -c src/bpgw/stage.cpp -Wno-write-strings $(shell freetype-config --cflags)
build/protogame.o : src/protogame.cpp src/protogame.h src/bpgw/game.h src/bpgw/eventmanager.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/stage.h src/bpgw/spritemanager.h src/bpgw/sprite.h src/bpgw/texture.h src/bpgw/vector2d.h src/bpgw/display.h src/bpgw/eventmanager.h src/bpgw/vector2d.h src/bpgw/color.h src/bpgw/vector2d.h src/bpgw/camera2d.h src/bpgw/vector2d.h src/bpgw/rect.h src/bpgw/vector2d.h src/bpgw/vector2d.h src/mystage.h src/bpgw/stage.h src/bpgw/vector2d.h | build/
	g++ -o build/protogame.o -c src/protogame.cpp -Wno-write-strings $(shell freetype-config --cflags)
# object dir targets
build/ :
	mkdir -p build
build/bpgw/ :
	mkdir -p build/bpgw
