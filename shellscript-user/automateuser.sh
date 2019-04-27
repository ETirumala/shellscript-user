#!/bin/bash
#this Script allow to create automate user and password
#Creating user
USERS=${@}
for USER in ${USERS}
do
SPEC='!@#$%^&*()_+'
SPEC_CHAR=$(echo ${SPEC}|fold -w2|shuf|head -1)
APL_UPPER='QWERTYUIPASDFGHJKLZXCVBNM'
APL_UPPER_C=$(echo ${APL_UPPER}|fold -w4|shuf|head -1)
APL_LOWER='mnbvcxzasdfghjklpoiuytrewq'
APL_LOWER_C=$(echo ${APL_LOWER}|fold -w5|shuf|head -1)
PASSWORD=$APL_UPPER_C${RANDOM}$(date +%N${RANDOM})${SPEC_CHAR}${APL_LOWER_C}${RANDOM}
useradd ${USER} -p ${PASSWORD}
echo "User ${USER} is successfully created."
echo ${PASSWORD}
done

