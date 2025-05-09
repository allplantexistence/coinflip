# Name of the final executable
TARGET = coinflip

# Directories
SRC_DIR = src
INC_DIR = include
BUILD_DIR = build

# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -I$(INC_DIR)

# Source and object files
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRCS))

# Default target
all: $(BUILD_DIR)/$(TARGET)

# Linking step
$(BUILD_DIR)/$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Compile each .c file into .o
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build artifacts
clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
