#!/bin/bash

export env=$1
export version=$2
JAR_NAME=/home/travis/build/mahankaleswararao/ScalaExample/target/ScalaExample-${version}.jar
echo "${JAR_NAME}"
CLASS_NAME="com.kali.FirstProgram"

if [ ${env} = "dev" ] || [ ${env} = "staging" ] || [ ${env} = "prod" ]; then 
    java -cp ${JAR_NAME} ${CLASS_NAME}
else 
    echo "Invalid Environment"
exit 1
fi
