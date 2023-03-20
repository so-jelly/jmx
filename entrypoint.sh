#!/bin/sh
echo "jmx-tester listening on port 6660"
java \
  -Dcom.sun.management.jmxremote \
  -Dcom.sun.management.jmxremote.port=6660 \
  -Dcom.sun.management.jmxremote.ssl=false \
  -Dcom.sun.management.jmxremote.authenticate=false \
  -Dcom.sun.management.jmxremote.rmi.port=6660 \
  -Djava.rmi.server.hostname=0.0.0.0 \
  -jar jmx-test.jar

#
