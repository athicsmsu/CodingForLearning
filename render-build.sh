#!/bin/bash
echo "Installing OpenJDK..."
curl -sL https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.20+8/OpenJDK11U-jdk_x64_linux_hotspot_11.0.20_8.tar.gz -o openjdk.tar.gz
mkdir -p jdk
tar -xzf openjdk.tar.gz -C jdk --strip-components=1
export JAVA_HOME=$PWD/jdk
export PATH=/path/to/jdk/bin:$PATH

echo "Java version:"
echo $JAVA_HOME
echo $PATH
java -version
javac -version

echo "Running yarn build..."
yarn
