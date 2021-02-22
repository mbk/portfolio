#!/bin/sh
javac --enable-preview --release 15 net/vrijheid/upgrade/demos/instancepattern/*.java
java --enable-preview net/vrijheid/upgrade/demos/instancepattern/InstanceOfRunner
