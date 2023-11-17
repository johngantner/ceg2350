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
