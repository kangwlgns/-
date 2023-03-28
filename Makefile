.SUFFIXES : .c .o

OBJECT = main.o read.o write.o
CC = gcc
TARGET = test

$(TARGET) : $(OBJECT)
	$(CC) -o $(TARGET) $(OBJECT)

%.o : %.c
	$(CC) -c $^

clean : 
	rm -rf $(OBJECT) $(TARGET) test.txt
