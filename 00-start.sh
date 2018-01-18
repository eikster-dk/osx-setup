#!/bin/sh

echo "Giving correct permissions..."
chmod +x ./01-brew.sh;
chmod +x ./02-npm.sh;
chmod +x ./03-docker.sh;


echo "Starting installation..."
./01-brew.sh;
./02-npm.sh;

echo "You are ready to code master..."
