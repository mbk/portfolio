#!/bin/sh
javac --enable-preview --release 15 net/vrijheid/upgrade/demos/records/*.java
java --enable-preview  net/vrijheid/upgrade/demos/records/RecordsInAction
