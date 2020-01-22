# Author: Nathan Bennett
#   Date: 1/16/20
## Makefile for the die project

# All commands under the rules must start with a tab
#Variables
CFLAGS = -Wall -std=c++11
CC = g++
#Linking all the files
#Create the executable program "die-main"
die.cc: die.o die.o 
	$(CC) $(CFLAGS) die.o die.o -o die
die.o: die.cc die.h
	$(CC) -c $(CFLAGS) die.cc
die.o: die.cc die.h
	$(CC) -c $(CFLAGS) die.cc
	# remove all the object and executable files
clean: 
	rm -f die.o die.o die