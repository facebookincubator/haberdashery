# @generated

CXX = cc
CXX_FLAGS = -pedantic -ansi -Wno-deprecated-declarations
LIB = /usr/lib64
LDLIBS = -lcrypto
PRIMITIVE = $(shell basename $(CURDIR))

HDRS = $(wildcard *.h)
TARGETS = $(HDRS:.h=)
TESTS = $(HDRS:.h=.test.o)

all: test clean

test: $(TARGETS)

$(TARGETS): $(TESTS)
	@../../c89_make_test_runner.sh ./$@.test.o bindings/openssl_evp/${PRIMITIVE}/$@_test.c

%.test.o: %_test.c %.c.o %.s.o %.h
	@$(CXX) $(CXX_FLAGS) -L$(LIB) $^ $(LDLIBS) -o $@

%.c.o: %.c %.s.o
	@$(CXX) $(CXX_FLAGS) -L$(LIB) $(LDLIBS) -o $@ -c $<

%.s.o: ../../../asm/x86_64/%.s
	@$(CXX) $(CXX_FLAGS) -o $@ -c $^

clean:
	@rm *.o
