# @generated

CXX = cc
CXX_FLAGS = -pedantic -ansi
PRIMITIVE = $(shell basename $(CURDIR))
ARCH = $(shell uname -m)

ASMS = $(notdir $(wildcard ../../../asm/$(ARCH)/*.s))
HDRS = $(filter $(ASMS:.s=.h),$(wildcard *.h))
TARGETS = $(HDRS:.h=)
TESTS = $(HDRS:.h=.test.o)

all: test clean

test: $(TARGETS)

$(TARGETS): $(TESTS)
	@../../c89_make_test_runner.sh ./$@.test.o bindings/c89/${PRIMITIVE}/$@_test.c

%.test.o: %.o %_test.c %.h
	@$(CXX) $(CXX_FLAGS) -o $@ $^

%.o: ../../../asm/$(ARCH)/%.s
	@$(CXX) $(CXX_FLAGS) -o $@ -c $^

clean:
	@rm *.o
