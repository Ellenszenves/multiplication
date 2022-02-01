#!/bin/bash
read -p "First number:" a
read -p "Second number:" b
c=0

unsigned() {
while (( $a > 1 ))
do
        if [ $(( $a % 2)) -eq 0 ]
        then
        echo "even"
        else
        c=$(( $c + $b ))
        fi
        a=$(( $a / 2 ))
        b=$(( $b + $b ))
echo $a $b $c
done
if [ $(( $a % 2)) -eq 0 ]
        then
        echo "even"
        else
        c=$(( $c + $b ))
        fi
echo $c
}

signed() {
while (( $a < -1 ))
do
        if [ $(( $a % 2)) -eq 0 ]
        then
        echo "even"
        else
        c=$(( $c + -$b ))
        fi
        a=$(( $a / 2 ))
        b=$(( $b + $b ))
echo $a $b $c
done
if [ $(( $a % 2)) -eq 0 ]
        then
        echo "even"
        else
        c=$(( $c + -$b ))
        fi
echo $c
}

if [ $a -gt 0 ]
then
unsigned
else
signed
fi

