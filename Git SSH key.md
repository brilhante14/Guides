#Step by step

####Check for keys
>    ls -al ~/.ssh

####Create
>    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
>    <b>Enter a file in which to save the key (/home/you/.ssh/id_rsa):</b> [Press enter]
>   <b>Enter passphrase (empty for no passphrase):</b> [Type a passphrase]

####Add to ssh-agent
>    eval "$(ssh-agent -s)" 

    #Start the ssh-agent in the background

>    ssh-add ~/.ssh/id_rsa

    #if you are adding an existing key that has a different name, replace id_rsa in the command with the name of your private key file

####Get the key
>    sudo apt-get install xclip
>    xclip -sel clip < ~/.ssh/id_rsa.pub

  or copy manually

>    cat ~/.ssh/id_rsa.pub

####Deploy on repository
>Settings -> Deploy Keys -> Add deploy key

####Cloning repository
>    git clone 'repository[SSH link]' 'directory'

####Pull
>    git pull

