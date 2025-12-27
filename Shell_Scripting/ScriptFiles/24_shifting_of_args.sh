#!/bin/bash

# To Create User Provide username and desc

echo "Creating User"
echo "Username is $1"


# shift means combine all remaining

shift
echo "Description is $@"
