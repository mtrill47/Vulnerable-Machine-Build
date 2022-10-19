# installation commands for the vulnerable machine naruto
# do not run this machine in your local network without monitoring it

echo -e "\e[1;31m updating repos \e[0m" 
apt update

echo -e "\e[1;31m installing apache \e[0m" 
apt install -y apache2

echo -e "\e[1;31m [+] installing and configuring ftp \e[0m"
apt install -y vsftpd
sudo ufw allow 20
sudo ufw allow 21
mkdir /var/ftp
chown nobody:nogroup ftp
sudo cp /etc/vsfpd.conf /etc/vsftpd.conf.bak
sed -i 's/anonymous_enable=NO/anonymous_enable=Yes/' /etc/vsftpd.conf
echo "anon_root=/var/ftp/" >> /etc/vsftpd.conf
systemctl restart vsftpd