# MonitTrial

A small how to on monit

* Monit doesn't permit variables in the monitrc
* monitrc uses some $PWD style variables
    * Makefile uses sed to replace the variables. Notice the escaping for Makefile and for '\'
* myCustomDaemon runs for 40seconds and dies.
    * monit restores it.
* monit-wrapper.sh
    * Makes daemon out of any standalone application
    * Maintains a pidfile for monit to monitor
    * Usage: monit-wrapper.sh [start|stop] <pidfile> <other-application> <other-application-args>
* Usage:
    * make # Creates monitrc
    * monit -c monitrc
    * monit status xyz
    * Or use browser http://localhost:2812
