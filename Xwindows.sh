LINE='export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '\''{print $2}'\''):0'
if grep "$LINE" ~/.bashrc
    then
        echo "Already setup"
    else
        echo $LINE >> ~/.bashrc
        . ~/.profile
fi