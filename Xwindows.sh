DISPLAY_LINE='export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '\''{print $2}'\''):0'
INDIRECT_LINE='export LIBGL_ALWAYS_INDIRECT=1'

grep "$DISPLAY_LINE" ~/.bashrc
if [ $? -ne 0 ]
then
    echo 'Adding DISPLAY line'
    echo $DISPLAY_LINE >> ~/.bashrc
else
    echo 'DISPLAY line found'
fi

grep "$INDIRECT_LINE" ~/.bashrc
if [ $? -ne 0 ]
then
    echo 'Adding LIBGL_ALWAYS_INDIRECT line'
    echo $INDIRECT_LINE >> ~/.bashrc
else
    echo 'LIBGL_ALWAYS_INDIRECT line found'
fi

echo 'Reloading profile'
source ~/.profile