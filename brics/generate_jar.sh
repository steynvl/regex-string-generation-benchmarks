#!/bin/bash

# remove old class files and create jar
mvn clean && mvn package

# rename and move jar to lib directory
mv target/brics-1.0-SNAPSHOT-jar-with-dependencies.jar brics.jar

mvn clean
