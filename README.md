arduino
=======
This is a project containing a set of tools to be able to build and transfer information to arduino chip.

Please clone :

```
git clone git@github.com:kounkou/arduino.git
cd arduino
```

Description :

This project is for µC lovers!
It allows you code on your arduino with a
K&R C programming language.

Example :

An example was given in the directory to 
test a real program.

Usage example :

To be able to use the tools functions, you might need to add the PATH to your bashrc or profile (for purists !)

```
PATH=~/<arduino PATH>/tools/:$PATH
```
Then move to the project lab directory :

```
cd lab
build.sh test.c
transfer.sh outbin <Your serial port, ex : ttyACM0>
```
