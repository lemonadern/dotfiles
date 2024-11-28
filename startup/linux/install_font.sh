# Install HackGen Font
wget https://github.com/yuru7/HackGen/releases/download/v2.9.0/HackGen_NF_v2.9.0.zip
unzip HackGen_NF_v2.9.0.zip
mv HackGen_NF_v2.9.0/ HackGen_NF/

sudo cp -r HackGen_NF/ /usr/local/share/fonts/
rm -rf HackGen_NF.zip HackGen_NF/

fc-cache -vf

