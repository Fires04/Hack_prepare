#/bin/bash
mkdir temp
cd temp

git clone https://github.com/danielmiessler/SecLists.git
cp -r ./SecLists /usr/share/wordlists/
chmod -R 777 /usr/share/wordlists

cd ..
rm -rf temp
