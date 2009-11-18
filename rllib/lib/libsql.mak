#############################################################################
# Makefile for building: librllibsql.so.1.0.0
# Generated by qmake (1.07a) (Qt 3.3.4) on: Thu Aug 25 08:04:45 2005
# Project:  libsql.pro
# Template: lib
# Command: $(QMAKE) -o libsql.mak libsql.pro
#############################################################################

####### Compiler, tools and options

CC       = gcc
CXX      = g++
LEX      = flex
YACC     = yacc
CFLAGS   = -pipe -O2 -march=i586 -mcpu=i686 -fmessage-length=0 -Wall -g -Wall -W -g -fPIC  
CXXFLAGS = -pipe -O2 -march=i586 -mcpu=i686 -fmessage-length=0 -Wall -g -Wall -W -g -fPIC  
LEXFLAGS = 
YACCFLAGS= -d
INCPATH  = -I/usr/lib/qt3/mkspecs/default -I. -I/usr/include/mysql -I/usr/include
LINK     = g++
LFLAGS   = -shared -Wl,-soname,librllibsql.so.1
LIBS     = $(SUBLIBS) -L/usr/lib/ 
AR       = ar cqs
RANLIB   = 
MOC      = $(QTDIR)/bin/moc
UIC      = $(QTDIR)/bin/uic
QMAKE    = qmake
TAR      = tar -cf
GZIP     = gzip -9f
COPY     = cp -f
COPY_FILE= $(COPY)
COPY_DIR = $(COPY) -r
INSTALL_FILE= $(COPY_FILE)
INSTALL_DIR = $(COPY_DIR)
DEL_FILE = rm -f
SYMLINK  = ln -sf
DEL_DIR  = rmdir
MOVE     = mv -f
CHK_DIR_EXISTS= test -d
MKDIR    = mkdir -p

####### Output directory

OBJECTS_DIR = ./

####### Files

HEADERS = rlbussignaldatabase.h
SOURCES = rlbussignaldatabase.cpp
OBJECTS = rlbussignaldatabase.o
FORMS = 
UICDECLS = 
UICIMPLS = 
SRCMOC   = 
OBJMOC = 
DIST	   = libsql.pro
QMAKE_TARGET = rllibsql
DESTDIR  = 
TARGET   = librllibsql.so.1.0.0
TARGETA	= librllibsql.a
TARGETD	= librllibsql.so.1.0.0
TARGET0	= librllibsql.so
TARGET1	= librllibsql.so.1
TARGET2	= librllibsql.so.1.0

first: all
####### Implicit rules

.SUFFIXES: .c .o .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o $@ $<

####### Build rules

all: libsql.mak  $(TARGET)

$(TARGET):  $(UICDECLS) $(OBJECTS) $(OBJMOC) $(SUBLIBS) $(OBJCOMP)  
	-$(DEL_FILE) $(TARGET) $(TARGET0) $(TARGET1) $(TARGET2)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJMOC) $(LIBS) $(OBJCOMP)
	-ln -s $(TARGET) $(TARGET0)
	-ln -s $(TARGET) $(TARGET1)
	-ln -s $(TARGET) $(TARGET2)



staticlib: $(TARGETA)

$(TARGETA):  $(UICDECLS) $(OBJECTS) $(OBJMOC) $(OBJCOMP)
	-$(DEL_FILE) $(TARGETA) 
	$(AR) $(TARGETA) $(OBJECTS) $(OBJMOC)

mocables: $(SRCMOC)
uicables: $(UICDECLS) $(UICIMPLS)

$(MOC): 
	( cd $(QTDIR)/src/moc && $(MAKE) )

libsql.mak: libsql.pro  /usr/lib/qt3/mkspecs/default/qmake.conf 
	$(QMAKE) -o libsql.mak libsql.pro
qmake: 
	@$(QMAKE) -o libsql.mak libsql.pro

dist: 
	@mkdir -p .tmp/rllibsql && $(COPY_FILE) --parents $(SOURCES) $(HEADERS) $(FORMS) $(DIST) .tmp/rllibsql/ && ( cd `dirname .tmp/rllibsql` && $(TAR) rllibsql.tar rllibsql && $(GZIP) rllibsql.tar ) && $(MOVE) `dirname .tmp/rllibsql`/rllibsql.tar.gz . && $(DEL_FILE) -r .tmp/rllibsql

mocclean:
uiclean:

yaccclean:
lexclean:
clean:
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) $(TARGET)
	-$(DEL_FILE) $(TARGET0) $(TARGET1) $(TARGET2) $(TARGETA)


FORCE:

####### Compile

rlbussignaldatabase.o: rlbussignaldatabase.cpp rlbussignaldatabase.h \
		rlcutil.h \
		rldefine.h

####### Install

install:  

uninstall:  
