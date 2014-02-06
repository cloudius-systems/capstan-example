# Copyright (C) 2014 Cloudius Systems, Ltd.
#
# This work is open source software, licensed under the terms of the
# BSD license as described in the LICENSE file in the top-level directory.

CXXFLAGS  = -g -Wall -std=c++11 -fPIC $(INCLUDES)

TARGET = hello

OBJ_FILES = hello.o

quiet = $(if $V, $1, @echo " $2"; $1)
very-quiet = $(if $V, $1, @$1)

all: $(TARGET).so

%.o: %.cc
	$(call quiet, $(CXX) $(CXXFLAGS) -c -o $@ $<, CXX $@)

$(TARGET).so: $(OBJ_FILES)
	$(call quiet, $(CXX) $(CXXFLAGS) -shared -o $(TARGET).so $^, LINK $@)

clean:
	$(call quiet, rm -f $(TARGET).so $(OBJ_FILES), CLEAN)
