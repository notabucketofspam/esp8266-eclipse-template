# esp8266-eclipse-template

Windows preconfigured project for the Eclipse IDE.

Tested in version 2020-06 of Eclipse. Designed to allow the user to skip the tedium of modifying project properties every time before starting any new project.

This template is based off of the instructions provided by Espressif [here](https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/get-started/eclipse-setup-windows.html).

Notes:

- Before use, the folder must be renamed and `./update-project-name.sh` must be run. The latter changes text in the relevant Eclipse and Make files to match the current working directory; this is essential to allow Eclipse and the compiler to recognize the project correctly.
- In contrast to the Espressif document mentioned above, the option `Import...` (under `File` at the top left of Eclipse) is not chosen; instead the option `Open Projects from File System...` is selected, since the template is already in the format of a proper Eclipse project.
- The template assumes that MSYS2 64-bit is installed instead of MSYS2 32-bit, and that the folder `msys64` is located in the root of the `C:\` drive.
- A modified version of `eclipse_make.py` is required due to a bug related to differences in how Python 2 and Python 3 handle strings and byte-like objects.

At this stage the Espressif instructions found [here](https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/get-started/eclipse-setup.html#eclipse-build-project) can be followed to complete the project setup process.
