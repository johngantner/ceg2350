<<<<<<< HEAD
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
=======
SRC_DIR=.
BUILD_DIR=build
PACKAGE_DIR=$(BUILD_DIR)/mypackage

all: $(BUILD_DIR) $(PACKAGE_DIR)/Main.class

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(PACKAGE_DIR)/Main.class: $(SRC_DIR)/Main.java $(PACKAGE_DIR)/Utils.class
	javac -d $(BUILD_DIR) $<

$(PACKAGE_DIR)/Utils.class: $(SRC_DIR)/Utils.java
	javac -d $(BUILD_DIR) $<

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
>>>>>>> 69025ab01644d26f35b9decc1e05153049b7b3a3
