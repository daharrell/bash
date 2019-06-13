#You will need a text file located in $dir with one IP address per line.
#Output from the test will out to $dirout 
# Authored by Dan Harrell
# Created on 6/11/2019

$dir = "/tmp/iplist.txt"
$dirout = "/tmp/ip_test_output.txt"
#!/bin/bash
cat /tmp/iplist.txt | while read output

do
        ping -c 1 -t 1 "$output" > /dev/null 2>&1 &&
        echo "IP Address $output is used" ||
        echo "IP Address $output is unused"

done > $dirout
