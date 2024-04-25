sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg

echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client

sudo apt install grub-customizer

sudo apt install terminator

sudo apt install pavucontrol

sudo apt install snapd

sudo systemctl start snapd

sudo snap install intellij-idea-ultimate --classic

sudo snap install pycharm-professional --classic

sudo snap install clion --classic
sudo apparmor_parser -r /etc/apparmor.d/*snap-confine*
sudo apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-confine*
echo "========================Don't Forget to Add Snap Path for Easy Access==============================================================="
echo "Temporary solution: Run the command export PATH=$PATH:/snap/bin"
echo "Permanent solution: Edit /etc/environment and add /snap/bin in the list then restart your system."
echo "Refer to: https://stackoverflow.com/questions/57121916/the-command-could-not-be-located-because-snap-bin-is-not-included-in-the-path"
echo "===================================================================================================================================="
