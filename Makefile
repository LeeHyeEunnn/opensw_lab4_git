PROF_DIR = $(shell pwd)
SRC_DIR = $(PROF_DIR)/src
INC_DIR = $(PROF_DIR)/include
OBJ_DIR = $(PROF_DIR)/obj
BIN_DIR = $(PROF_DIR)/bin

# 실행 파일 생성 규칙
$(BIN_DIR)/myapp: $(OBJ_DIR)/main.o $(OBJ_DIR)/func1.o $(OBJ_DIR)/func2.o
		gcc -o $@ $^ 

# 객체 파일 생성 규칙
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
		gcc -c -o $@ $< -I$(INC_DIR)

clean:
	rm -f $(OBJ_DIR)/*.o
	rm -f $(BIN_DIR)/myapp