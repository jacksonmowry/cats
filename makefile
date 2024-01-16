# Cats
# C Auto Template System
# @file
# @version 0.1

buffer_string.h: buffer.h
	xxd -i $< > $@

# Debug build
cats_debug: CFLAGS += -fsanitize=address -g -Wpedantic
cats_debug: cats.c buffer_string.h
	clang $(CFLAGS) $< -o $@

# Optimized build
cats: CFLAGS += -O3 -Wpedantic
cats: cats.c buffer_string.h
	clang $(CFLAGS) $< -o $@

.PHONY: all debug optimized
all: cats_debug

debug: cats_debug

run_debug: cats_debug
	./cats_debug index.html

run: cats
	(cd examples && ../cats index.html)

clean:
	rm -f buffer_string.h cats_debug cats_optimized

# end
