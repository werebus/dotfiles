#!/usr/bin/env python
import sys
import os
import re

try:
    path   = sys.argv[1]
    length = int(sys.argv[2])
except:
    print >>sys.stderr, "Usage: $0 <path> <length>"
    sys.exit(1)

path = re.sub(os.getenv('HOME'), '~', path)
while len(path) > length:
    dirs = path.split("/");

    # Find the longest directory in the path.
    max_index  = -1
    max_length = 3

    for i in range(len(dirs) - 1):
        if len(dirs[i]) > max_length:
            max_index  = i
            max_length = len(dirs[i])

    # Shorten it by one character.
    if max_index >= 0:
        dirs[max_index] = dirs[max_index][:max_length-3] + ".."
        path = "/".join(dirs)

    # Didn't find anything to shorten. This is as good as it gets.
    else:
        break

print(path)
