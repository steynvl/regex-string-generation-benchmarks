#!/bin/bash

# remove old class files and create jar
mvn clean && mvn package

# rename and move jar to lib directory
mv target/hampi-1.0-SNAPSHOT-jar-with-dependencies.jar hampi.jar

mvn clean
