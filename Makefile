src/boot.bin: src/boot.asm
	nasm $^ -f bin -o $@