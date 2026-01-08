#!/usr/bin/env awk -f

BEGIN {
    IGNORECASE = 1
    longest = ""
}

{
    for (i = 1; i <= NF; i++) {
        if ($i ~ pattern && length($i) > length(longest)) {
            longest = $i
        }
    }
}

END {
    if (longest != "")
        print "Longest matching word:", longest
    else
        print "No matching word found"
}
