#!/bin/bash
# This is a practice scripts 
# donates single line comment 
<<Commented 
these
are multiline 
comments
Commented

#Declaring Variables
name="Beethika"
challenge="90DaysDevOpsChallenge"
$name
$challenge
#Using Variables
echo "this is linux for devops practice script"
echo "I'm $name and im taking $challenge for rebrushing my devops concepts."


#Builtin variables
echo "Current logged in user: $USER"
echo "Home directory: $HOME"
echo "Current host type: $HOSTTYPE"
echo "OldPW of the user: $OLDPWD"


#Wildcard
#An asterisk (*)
cd ..
ls d*

#[] Wild card
ls d[okhyfv]ds


