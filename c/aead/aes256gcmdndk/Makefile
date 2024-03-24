# @generated

CXX = cc
CXX_FLAGS = -pedantic -ansi
ALG = $(shell basename $(CURDIR))

HDRS = $(wildcard *.h)
TARGETS = $(HDRS:.h=)
TESTS = $(HDRS:.h=.test.o)

all: test clean

test: $(TARGETS)

$(TARGETS): $(TESTS)
	@../../make_test_runner.sh ./$@.test.o ${ALG}/$@

%.test.o: %.o %_test.c %.h
	@$(CXX) $(CXX_FLAGS) -o $@ $^

%.o: ../../../asm/$(ALG)_%.s
	@$(CXX) $(CXX_FLAGS) -o $@ -c $^

clean:
	@rm *.o
