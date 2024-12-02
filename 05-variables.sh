#!/bin/bash

echo " please enter a user name:: "

read -s USERNAME     # without -s it will display username pswd ,, if you give -s it will hide

echo "please enter password"

read -s PASSWORD

echo "username is $USERNAME , password is  $PASSWORD"