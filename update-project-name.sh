#!/bin/sh
sed -i s,"esp8266-eclipse-template",${PWD##*/},g ".cproject"
sed -i s,"esp8266-eclipse-template",${PWD##*/},g ".project"
sed -i s,"esp8266-eclipse-template",${PWD##*/},g "Makefile"
sed -i s,"esp8266-eclipse-template",${PWD##*/},g "CMakeLists.txt"
IDF_PATH_FIX=$(sed 's,\\,/,g' <<<"$IDF_PATH")
IDF_PATH_FIX=$(sed 's,:,\\\\:,g' <<<"$IDF_PATH_FIX")
sed -i s,"IDF_PATH_TEMP",$IDF_PATH_FIX,g ".settings/org.eclipse.cdt.core.prefs"
