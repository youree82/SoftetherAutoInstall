#Script Builded by M. Faishal Akbar
#For Invisible Connection users
clear
echo ========================
echo SOFTENER INSTALLER
echo DEBIAN ONLY!
echo ========================
echo Skrip ini Automatis menginstall Softether ke VPS Debian anda
echo Ingat! Untuk debian!
echo 5 detik untuk CTRL+C jika system bukan debian :3
sleep 5
echo ==================================================
echo updating repository 
apt-get update -y
apt-get install build-essential -y
echo ==================================================
echo Downloading softether VPN Server for linux x86...
cd /root
wget http://www.softether-download.com/files/softether/v4.10-9473-beta-2014.07.12-tree/Linux/SoftEther_VPN_Server/32bit_-_Intel_x86/softether-vpnserver-v4.10-9473-beta-2014.07.12-linux-x86-32bit.tar.gz
tar zxf softether-vpnserver-v4.10-9473-beta-2014.07.12-linux-x86-32bit.tar.gz
cd vpnserver
echo ========================
echo Accept saja License agreement dengan memasukkan angka 1.
make
cd ..
mv vpnserver /usr/local
cd /usr/local/vpnserver/
chmod 600 *
chmod 700 vpncmd
chmod 700 vpnserver
cd /root
wget http://puu.sh/akGhY/993459cf31.sh
mv 993459cf31.sh /etc/init.d/vpnserver
cd /etc/init.d
chmod +x vpnserver
mkdir /var/lock/subsys
update-rc.d vpnserver defaults
/etc/init.d/vpnserver start
cd /usr/local/vpnserver
clear
echo ============PETUNJUK SELANJUTNYA==============
echo ketik "cd /usr/local/vpnserver" tanpa petik
echo ketik ./vpncmd
echo tekan 1 untuk masuk Admin Side
echo ketik 127.0.0.1:5555 untuk IP dan Port
echo lalu, untuk Hub kosongi saja, dengan menekan enter
echo jika sudah bisa masuk seperti ini:
echo VPN Server>
echo ketik ServerPasswordSet untuk mengatur password Admin Softether
echo Petunjuk selanjutnya merujuk ke http://blog.lincoln.hk/blog/2013/03/19/softether-on-vps/
echo :v
echo *skrip ini masih belum menjangkau Local bridge*
echo ===============================================
exit