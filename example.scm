(import (posix syslog))

(openlog "syslog-test" (+ option/pid option/perror) facility/user)
(syslog prio/debug "Hello World!")
(closelog)
