read -p "Please make sure adb is enabled and authorized on your device and please note there will be one more prompt  later on before we continue to flash your device. Press any key to continue..."
mkdir workspace
wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip -P  ./workspace
wget https://github.com/ssut/payload-dumper-go/releases/download/1.2.2/payload-dumper-go_1.2.2_linux_amd64.tar.gz -P  ./workspace
cd ./workspace
unzip platform-tools-latest-linux.zip
tar -xf payload-dumper-go_1.2.2_linux_amd64.tar.gz
rm -Rf  payload-dumper-go_1.2.2_linux_amd64.tar.gz && rm -Rf  platform-tools-latest-linux.zip
read -p "Please copy firmware to ./workspace/ and rename to firmware.zip then press any key to continue..."
mkdir firmware
mv firmware.zip firmware/
cd firmware/
unzip firmware.zip
cd */
mkdir payload
mv payload.bin payload/
cd payload/
../../../payload-dumper-go payload.bin
cd */
mv * ../../../platform-tools/
cd ../../../platform-tools/
PATH="./"
adb reboot fastboot
fastboot reboot fastboot
fastboot flash --slot=all abl abl.img
fastboot flash --slot=all aop aop.img
fastboot flash --slot=all bluetooth bluetooth.img
fastboot flash --slot=all cmnlib64 cmnlib64.img
fastboot flash --slot=all cmnlib cmnlib.img
fastboot flash --slot=all devcfg devcfg.img
fastboot flash --slot=all dsp dsp.img
fastboot flash --slot=all hyp hyp.img
fastboot flash --slot=all imagefv imagefv.img
fastboot flash --slot=all keymaster keymaster.img
fastboot flash --slot=all LOGO LOGO.img
fastboot flash --slot=all modem modem.img
fastboot flash --slot=all multiimgoem multiimgoem.img
fastboot flash --slot=all oem_stanvbk oem_stanvbk.img
fastboot flash --slot=all opproduct opproduct.img
fastboot flash --slot=all qupfw qupfw.img
fastboot flash --slot=all storsec storsec.img
fastboot flash --slot=all tz tz.img
fastboot flash --slot=all uefisecapp uefisecapp.img
fastboot flash --slot=all xbl_config xbl_config.img
fastboot flash --slot=all xbl xbl.img
fastboot reboot
rm -rf .../.../workspace/
