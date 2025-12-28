#!/bin/awk -f

BEGIN{
	print "Start File"
	print $0
}

{}

END{
	print "END File"
}
