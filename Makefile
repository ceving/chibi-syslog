PREFIX:=$(or $(PREFIX),/usr/local)

all: syslog.so

clean:
	-rm *~ syslog.c syslog.so

dist:
	mkdir chibi-syslog-`cat VERSION`
	cp `cat FILES` chibi-syslog-`cat VERSION`/.
	tar czf chibi-syslog-`cat VERSION`.tar.gz chibi-syslog-`cat VERSION`
	rm -rf chibi-syslog-`cat VERSION`

install: syslog.so
	install -D syslog.so $(PREFIX)/lib/chibi/posix/syslog.so
	install -D syslog.sld $(PREFIX)/share/chibi/posix/syslog.sld

syslog.so: syslog.stub
	chibi-ffi -c $<
