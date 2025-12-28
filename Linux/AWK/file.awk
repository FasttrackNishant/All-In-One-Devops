BEGIN{
	print "Data is there"
}
{
	if($NF>70000)
		$7="High"
	else
		$7="Low"
	
	print $0
}
END{
	print "end is here"
}
