# Oneplus Vendor Updater

This is a simple script I made for linux that will automatically flash your Oneplus devices vendor firmware without wiping the device. This is useful for when you are running a custom rom such as Lineage Os or Crdroid which cannot include Oneplus's propietary files in the upgrade packages.

### TO-DO:
- [ ] Automatically fetch required files
- [ ] Automatically setup work environment and reduce human intervention
- [ ] Simplify process and reduce steps needed

### Prerequisites

Requirements for the software and other tools to build, test and push 
- [Latest Adb and Fastboot Tools](https://developer.android.com/studio/releases/platform-tools#downloads)
- [Oneplus Phone](https://www.oneplus.com/store/phone)
- [Latest Vendor Firmware For your Device](https://www.oneplus.com/global/support/softwareupgrade)
- [Computer Running Linux](#)

### Usage Instructions

Extract your firmware.zip that you downloaded

  [Download](https://github.com/ssut/payload-dumper-go/releases) payload-dumper-go then extact the contents

Copy payload.bin into the newly extracted folder then run
  
  ```$./payload-dumper-go payload.bin```

  After The extraction is complete copy updatefirmware.sh to the newly created folder with the extracted contents

  Connect your phone to you computer with adb enabled then execute the following commands
  
  ```#adb reboot fastboot```
  
  ```#./updatefirmware.sh```

  Wait for the process to complete then reboot your device
  
  ```fastboot reboot```


## Authors

  - [**GunmetalOrb73**](https://github.com/GunmetalOrb73) - *Creating and testing the script* -
    


## License

This project is licensed under [The Unlicense](LICENSE) see the [LICENSE](LICENSE) file for
details

## Acknowledgments

  - SSUT and the other developers of payload-dumper-go for creating an easy and quick way to extract your firmware
  - AOSP
  - Anyone else I may forget to mention such as Lineage OS for their contributions to the android open source project

