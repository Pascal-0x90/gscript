# Define Go command and flags
GOCMD = go
GOFLAGS = -ldflags="-s -w"
TARGET_PATH = cmd/gscript
# Define the target executable
TARGET = gscript

# Default target: build the executable
all: $(TARGET_PATH)/$(TARGET)

# Rule to build the target executable
$(TARGET_PATH)/$(TARGET): $(TARGET_PATH)/main.go
	cd $(TARGET_PATH) && $(GOCMD) build $(GOFLAGS) -o $(TARGET) 

# Clean target: remove the target executable
clean:
	rm -f $(TARGET_PATH)/$(TARGET)

# Run target: build and run the target executable
run: $(TARGET_PATH)/$(TARGET)
	./$(TARGET_PATH)/$(TARGET)

# Test target: run Go tests for the project
test:
	$(GOCMD) test ./...