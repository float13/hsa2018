#!/bin/bash

# compile a bare-Java "headless" Processing sketch
# from the command line
# to write & run Processing sketches without the IDE

# NOTE - User must change path to Processing core.jar
proc3core="/Applications/Processing 2.app/Contents/Java/core/library/core.jar"
myfile="$1"	# input filename to compile

# Quit if input filename not given
if [[ $# < 1 ]]; then
	echo $#
	echo "Error - input filename required."
	exit 1
fi

# Make sure core.jar path is valid
if [ -e "$proc3core" ]; then
	echo "Core.jar exists..."
else
	echo "Error core.jar not found"
	exit 1
fi

echo "Compiling..."
javac -cp "$proc3core" "$myfile"
errcode=$?

className=""
if [ $errcode == 0 ]; then
	echo "Compiling Successful."
	className="$(basename "$myfile" ".java")"	# classname WITHOUT extension
	classFile="$className.class"	# with Extension
	echo "Output File: "$classFile""
else
	echo "Error during compilation."
	exit 1
fi

if [ ! -e "$classFile" ]; then
	echo "Error: Output .class file does not exist."
	exit 1
fi

# Run program if successful:
# TODO move this/make a separate input flag for it
echo "<<<< BEGIN PROCESSING PRINT OUTPUT >>>>"
java -cp ".:$proc3core" "$className"
echo "<<<< END PROCESSING PRINT OUTPUT >>>>"
echo
# NOTE: on Windows, classpath separator is ";" (semicolon)
