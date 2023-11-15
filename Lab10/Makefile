# Makefile for Java repeat

# Compiler
JAVAC = javac

# Java source file
SOURCE = Repeat.java

# Compiled class file
CLASSES = Repeat.class

# Default target: build the project
all: $(CLASSES)

# Rule to compile Java source code
$(CLASSES): $(SOURCE)
        $(JAVAC) $(SOURCE)

# Target to run the compiled program
run: $(CLASSES)
        java Repeat

# Target to clean the project (remove compiled files)
clean:
        rm -f $(CLASSES)

# Ensure 'run' depends on 'all' to make sure the program is compiled before running
run: all

