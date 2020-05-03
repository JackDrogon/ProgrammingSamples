#!/bin/bash

awk -f - <<'EOD'
{
	print $1
}

END {
	print "END"
}
EOD
