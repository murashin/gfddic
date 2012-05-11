# Copyright 2005-2012 Shin-ya Murakami <murashin _at_ gfd-dennou.org>

PREFIX=/usr/local
CANNASCRIPT=${PREFIX}/etc/rc.d/canna
CANNASYSDIR=${PREFIX}/share/canna/dic/canna  #Canna system dictionary directory
DIC=gfddic

all: mkdic

mkdic: ${DIC}.t
	mkbindic ${DIC}.t
#BUG: cannaが動いていることを仮定している.
#     従って, cannaが動いていないとエラーで止まる.
install: ${DIC}.cbd ${DIC}.cld
	${CANNASCRIPT} stop
	install -m 664 -o bin -g bin ${DIC}.cbd ${DIC}.cld ${CANNASYSDIR}
	${CANNASCRIPT} start

clean:
	rm -f ${DIC}.cld ${DIC}.cbd ${DIC}.t 
