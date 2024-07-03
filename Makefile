JC = javac

JRE = java

SRC_DIR = .

BUILD_DIR = .

JAVA_FILES = $(wildcard $(SRC_DIR)/*.java)

CLASS_FILES = $(JAVA_FILES:$(SRC_DIR)/%.java=$(BUILD_DIR)/%.class)


all: $(CLASS_FILES)


$(BUILD_DIR)/%.class: $(SRC_DIR)/%.java
	$(JC) $< -d $(BUILD_DIR)


run: all
	$(JRE) -cp $(BUILD_DIR) Main

clean:
	rm -f $(BUILD_DIR)/*.class
