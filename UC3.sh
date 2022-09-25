#!/bin/bash
echo "Enter First number"
read a
echo "Enter Second Number"
read b
echo "Enter Third Number"
read c

z=$(( $c + $(( $b * $a )) ))
echo $z

