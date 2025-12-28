#!/bin/awk -f

BEGIN{
	print "Start File"
	print $0

}
{
	if($NF==50000)
		print "CEO"
}

{
	print $0
}

END{
	print "END File"
}

