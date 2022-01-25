ooze/boot.bin: ooze/boot.asm
	nasm $^ -f bin -o $@