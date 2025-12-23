#!/usr/bin/env bash
# Fetch the latest version of the library
fetch() {
if [ -d "lurlparser" ]; then return; fi
URL="https://github.com/corporateshark/LUrlParser/archive/refs/heads/master.zip"
ZIP="${URL##*/}"
DIR="LUrlParser-master"
mkdir -p .build
cd .build

# Download the release
if [ ! -f "$ZIP" ]; then
  echo "Downloading $ZIP from $URL ..."
  curl -L "$URL" -o "$ZIP"
  echo ""
fi

# Unzip the release
if [ ! -d "$DIR" ]; then
  echo "Unzipping $ZIP to .build/$DIR ..."
  cp "$ZIP" "$ZIP.bak"
  unzip -q "$ZIP"
  rm "$ZIP"
  mv "$ZIP.bak" "$ZIP"
  echo ""
fi
cd ..

# Copy the libs to the package directory
echo "Copying libs to lurlparser/ ..."
rm -rf lurlparser
mkdir -p lurlparser
cp -f ".build/$DIR/LUrlParser.h"   lurlparser/
cp -f ".build/$DIR/LUrlParser.cpp" lurlparser/
echo ""
}


# Test the project
test() {
echo "Running 01-parse-url.cxx ..."
clang++ -std=c++17 -o 01.exe -I. examples/01-parse-url.cxx     && ./01.exe && echo -e "\n"
echo "Running 02-validate-port.cxx ..."
clang++ -std=c++17 -o 02.exe -I. examples/02-validate-port.cxx && ./02.exe && echo -e "\n"
}


# Main script
if [[ "$1" == "test" ]]; then test
elif [[ "$1" == "fetch" ]]; then fetch
else echo "Usage: $0 {fetch|test}"; fi
