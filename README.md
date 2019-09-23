If you don't want to use __git submodule__, ```depp``` is maybe the right choose for you to handle multiple project with git.

# Install depp
Clone repo or download zip.

On Linux add Path to depp in __.bashrc__ 
```bash
export PATH=$PATH:/pathtodepp/depp
```
or add alias like

```bash
alias d='/pathtodepp/depp/depp.sh'
alias depp-init='/pathtodepp/depp/depp-init.sh'
```

On Windows with git-bash create __.bash_profile__, if not exists and add Path to depp in __.bash_profile__ 
```bash
export PATH=$PATH:/pathtodepp/depp
```

or add alias like

```bash
alias d='/pathtodepp/depp/depp.sh'
alias depp-init='/pathtodepp/depp/depp-init.sh'
```
Set execute permissions to depp.sh and depp-init.sh.


# Use depp
After you cloned your repos in one folder.
For example :
```
main-folder
  |-- project1
  |-- project2
  |-- project3
```
Switch to main-folder and run depp.init.sh.
depp-init.sh creates a file called __projects.depp__ with the content:

```
project1/ 
project2/
project3/
```

Now you can run git commands on all projects with depp.

e.g.
```
depp status
```
Shows the status of all projects.

