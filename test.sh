#!/usr/bin/env bash

changed_file="/var/test/Aa.yaml"
classScript=$( printf '$s = "%s"; $exploded = explode("/", $s); if (strpos(end($exploded), ".php") !== false) {echo (str_replace(".php", "", end($exploded)));} else echo "Fail" ;' $changed_file )
class=$( php -r "$classScript");
echo $class

if [ $class != "Fail" ]; then
    echo success
fi