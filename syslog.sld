;; -*- scheme -*-

(define-library (posix syslog)
  (import (scheme))
  (export openlog closelog syslog
	  option/pid option/cons option/odelay option/ndelay option/nowait
	  option/perror
	  facility/kern facility/user facility/mail facility/daemon
	  facility/auth facility/syslog facility/lpr facility/news facility/uucp
	  facility/cron facility/authpriv facility/ftp facility/local0
	  facility/local1 facility/local2 facility/local3 facility/local4
	  facility/local5 facility/local6 facility/local7
	  prio/alert prio/crit prio/err prio/warning prio/notice prio/info
	  prio/debug)
  (include-shared "syslog"))
