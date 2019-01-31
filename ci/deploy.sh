#!/bin/bash

export env=$1
export version=$2
JAR_NAME=/home/travis/build/MahanKaleswararao/ScalaExample/target/ScalaExample-${version}.jar

echo "${JAR_NAME}"
pwd

CLASS_NAME="com.kali.FirstProgram"
echo "$SCALA_HOME"

if [ ${env} = "dev" ] || [ ${env} = "staging" ] || [ ${env} = "prod" ]; then 
    scala ${JAR_NAME}
else 
    echo "Invalid Environment"
exit 1
fi
