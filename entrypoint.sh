#!/bin/sh
## Licensed under the terms of http://www.apache.org/licenses/LICENSE-2.0

## env | sort
#exec "$JAVA_HOME/bin/java" $JAVA_OPTIONS -jar "${FUSEKI_DIR}/${FUSEKI_JAR}" "$@"

# Execute the Fuseki server with the provided arguments
exec java -Xmx1200M -jar fuseki-server.jar "$@"
