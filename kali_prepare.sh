#/bin/bash
mkdir temp
cd temp

git clone https://github.com/danielmiessler/SecLists.git
cp -r ./SecLists /usr/share/wordlists/
chmod -R 777 /usr/share/wordlists

cd ..
rm -rf temp

echo "deb http://ftp.us.debian.org/debian stretch main contrib non-free" | tee -a /etc/apt/sources.list

apt-get update
apt install chromium
apt install filezilla

mkdir Payloads
echo "<?php echo(\"PHP active\"); phpinfo(); ?>" > ./Payloads/php_test.php
