# SUAS-Installs
Instructions and scripts for installing 'stuff' for SUAS

## Python3.9
---
Install python3.9

## ArduPilot
---
words
## XLaunch
---
words
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