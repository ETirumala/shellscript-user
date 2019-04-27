#!/bin/bash

#Creating a User and password
user_name=priya
useradd ${user_name} -p sp.@14
echo ${user_name} Created Successfully.
