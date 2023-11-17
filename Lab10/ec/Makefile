# Makefile for Java multi-file project

# Compiler
JAVAC = javac

# Java source files
SOURCES = Main.java Helper.java

# Compiled class files
CLASSES = Main.class Helper.class

# Default target: build the project
all: $(CLASSES)

# Rule to compile Java source code
$(CLASSES): $(SOURCES)
    $(JAVAC) $(SOURCES)

# Target to run the compiled program
run: $(CLASSES)
    java Main

# Target to clean the project (remove compiled files)
clean:
    rm -f $(CLASSES)
