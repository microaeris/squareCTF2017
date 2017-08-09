BIN=../../bin
OBJ=./obj

build:
	mkdir -p $(OBJ)
	$(BIN)/gbdk-n-compile.sh -I./ mission.c -o $(OBJ)/mission.rel
	$(BIN)/gbdk-n-link.sh $(OBJ)/mission.rel -o $(OBJ)/mission.ihx
	$(BIN)/gbdk-n-make-rom.sh $(OBJ)/mission.ihx mission.gb

clean:
	rm -rf $(OBJ)
	rm -f mission.gb
