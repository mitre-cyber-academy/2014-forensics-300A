Name: Mistakes of the Past

Description: Users are provided with a VM which has a password protected zip file in it, along with the bash history. They have to first gain access to the virtual machine and then look through the history of commands run in order to reverse them.

Solution: User will need to first gain access to the Ubuntu machine by resetting the root password. (http://askubuntu.com/questions/24006/how-do-i-reset-a-lost-administrative-password) Once that is done, they will need to log into the box and run the history command. In the history they will see two hints towards how to solve the challenge. They will see that the file was zipped up with a password and then encrypted with mcrypt.


zip -Pbluths contract-documents.zip contract-documents.txt
mcrypt contract-documents.zip

They will then need to run `mcrypt -d contract-documents.zip` and use the password bluths.

Once they have the file decrypted with mcrypt they will then need to try to unzip the zip file, however the zipfile password is not bluths, since the zip executable is overridden in /usr/local/bin/zip. They will need to open that script and realize that the password is really bluthsfrozenbananas. Once it is unzipped the key is in the enclosed txt document.

Key: 1670d90ab4a0cfa3dd429a7f203f801d47814f9b


Note: The main file for this challenge is not located in this repository and can be downloaded at the link below.

Distribute: [Contracts.ova](https://drive.google.com/file/d/0B48Lv30KB1seMmo4b1ZIWEpuSDA/view?usp=sharing)

Notes:

Machine Name: Contracts
Hostname: bluthcorp
Username: georgesr
Password: I'm innocent!