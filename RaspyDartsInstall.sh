RASPYDARTS_IMAGE_URL=https://montetoncab.fr/FTP-MTC/Membres/manu-b/RaspyDarts/02%20-%20Logiciel/Images/V4.3.3/RaspyDarts_V4.3.3.rar
RASPYDARTS_IMAGE_NAME=RaspyDarts_V4.3.3.img

sudo apt install -y p7zip p7zip-full p7zip-rar python3-pip python3-paho-mqtt python3-pycurl python3-netifaces

pip3 install pyautogui board adafruit-blinka adafruit-circuitpython-mcp230xx --break-system-packages

mkdir -p tmp
cd tmp

if [ ! -f mountpi/mountpi.sh ]; then
    git clone https://github.com/novamostra/mountpi
    sudo chmod +x mountpi/mountpi.sh
fi

if [ ! -f RaspyDarts.rar ]; then
    wget $RASPYDARTS_IMAGE_URL -O RaspyDarts.rar
fi

if [ ! -f $RASPYDARTS_IMAGE_NAME ]; then
    7z e RaspyDarts.rar
fi

sudo ./mountpi/mountpi.sh -i $RASPYDARTS_IMAGE_NAME -m RaspyDartsImage

sudo cp -r -v ./RaspyDartsImage/pydarts /
cp -r -v ./RaspyDartsImage/home/pi/.pydarts ~/
cp -v ./RaspyDartsImage/home/pi/Desktop/Raspydarts.desktop ~/Desktop/

sudo chown -R $USER /pydarts

sudo ./mountpi/mountpi.sh -i $RASPYDARTS_IMAGE_NAME -m RaspyDartsImage -u

cd ..
rm -r -f tmp