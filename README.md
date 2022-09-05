# Oneplus Vendor Updater

This is a simple script I made for linux that will automatically flash your Oneplus devices vendor firmware without wiping the device. This is useful for when you are running a custom rom such as Lineage OS or Crdroid which cannot include Oneplus's propietary files in the upgrade packages.

### TO-DO:
- [x] Automatically fetch required files
- [x] Automatically setup work environment and reduce human intervention
- [x] Simplify process and reduce steps needed

### Prerequisites

Requirements for the software and other tools to build, test and push 
- [Oneplus Phone](https://www.oneplus.com/store/phone)
- [Latest Vendor Firmware For your Device](https://www.oneplus.com/global/support/softwareupgrade)
- [Computer Running Linux](#)
- [ A stable internet connection](#)

### Usage Instructions

  Connect your powered on device to your computer with adb enabled then execute the following command as root. 
  
  ```#./updatefirmware.sh```

After flashing is complete your device will automatically reboot into the system

## Authors

  - [**GunmetalOrb73**](https://github.com/GunmetalOrb73) - *Creating and testing the script* -
    


## License

This project is licensed under [The Unlicense](LICENSE) see the [LICENSE](LICENSE) file for
details

## Acknowledgments

  - SSUT and the other developers of payload-dumper-go for creating an easy and quick way to extract your firmware
  - AOSP
  - Anyone else I may forget to mention such as Lineage OS for their contributions to the android open source project

