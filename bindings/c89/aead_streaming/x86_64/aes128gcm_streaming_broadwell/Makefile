# @generated
CXX = cc
CXX_FLAGS = -pedantic -ansi

HDRS = $(wildcard *.h)
TARGETS = $(HDRS:.h=)
TESTS = $(HDRS:.h=.test.o)

all: test clean

test: $(TARGETS)

$(TARGETS): $(TESTS)
	@../../../../c89_make_test_runner.sh ./$@.test.o bindings/c89/aead_streaming/x86_64/$@/

%.test.o: %.o %_test.c %.h
	@$(CXX) $(CXX_FLAGS) -o $@ $^

%.o: ../../../../../asm/x86_64/%.s
	@$(CXX) $(CXX_FLAGS) -o $@ -c $^

clean:
	@rm *.o
