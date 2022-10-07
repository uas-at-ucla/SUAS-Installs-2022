# SUAS-Installs
Instructions and scripts for installing 'stuff' for SUAS

## Python3.9
---
Install python3.9

## ArduPlane
---
words

Open WSL
run script
Close WSL

## VcXsrv
---
The ArduPlane simulator will run on WSL, but to access the graphical simulation, we need to tell
WSL to port the graphics to the Windows host system.
To do this, we use an VcXsrv server to receive the graphics.

To install VcXsrv, follow the instructions [here](https://sourceforge.net/projects/vcxsrv/)

This will create a program called XLaunch which will launch the VcXsrv server.

**ADD how to connect WSL to VcXsrv**

## Clone UAS SUAS-flight-2023 repository
---
When we write code, we want to
1. share it with others
2. keep track of old version of the code

To do this, we use Git, a version control software.
Through Git, we use a repository to hold the code for a single project.

Clone (download) our flight 2023 repository by doing the following
```bash
git clone https://github.com/uas-at-ucla/suas-flight-2023.git
cd suas-flight-2023
```
This will create a *new* folder called suas-flight-2023 and changes directory to it.
This is where all the development for our flight software will be kept.

## Python Virtual Environment
---
To manage our Python libraries, we use Pip3.
However, we also want a program to isolate our workspaces so we don't use include packages from other workspaces.
The solution to this is a Python virtual environment (venv).
<br/>

### Create the virtual environment
To create a Python virtual environment, do
```bash
python -m venv venv
```
which creates a virtual environment folder called 'venv'.
<br/>

### Activating the virtual environment
To activate a Python virtual environment, do
```bash
source ./venv/bin/activate
```
which runs the activation script. 
Your lines in the terminal should now start with '(venv)'.
<br/>

### Installing required packages
To install required packages, do
```bash
pip3 install -r requirements.txt
```
which installs all the packages from requirements.txt into the virtual environment.
This allows us to document the packages we are using for this specific workspace.


## VSCode (recommended)
---
Now that we have all the frameworks and packages we want to use, we need a place to actually write ***CODE***.
For this, we use a type of software called an *Integrate Development Environment* or *IDE* for short.
This is basically a fancy text editor made specifically to write code. 
We recommend using VSCode for our projects. VSCode allows for a lot of customization and sharing them.

You can find VSCode [here](https://code.visualstudio.com/Download)

## Windows Terminal (recommended)
---