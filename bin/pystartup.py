#!/usr/bin/env python

try:
    import readline
except ImportError:
    print "Unable to load readline module."
else:
    import rlcompleter
    readline.parse_and_bind("tab: complete")

from datetime import datetime
def fromtimestamp(ts):
    return datetime.utcfromtimestamp(ts)
