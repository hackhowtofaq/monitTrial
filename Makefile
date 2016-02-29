all: monitrc

monitrc: monitrc.in
	cp monitrc.in monitrc
	sed -i 's/\$$PWD/'`pwd | sed -e 's/[\/&]/\\\\&/g'`'/g' monitrc
	sed -i 's/\$$MONIT_PATH/'`pwd | sed -e 's/[\/&]/\\\\&/g'`'/g' monitrc

clean:
	rm monitrc
