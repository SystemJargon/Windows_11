How to Bypass Windows 11's TPM Requirement Using Rufus

With Rufus, a free utility, you can create a Windows 11 install disk on a USB Flash drive with settings that disable the TPM, RAM and CPU requirements. You can either boot off of this USB Flash drive to do a clean Windows 11 install or run the setup file off of the drive from within Windows 10 to do an in-place upgrade.

For most people, this method is ideal, but there are a couple of disadvantages. First, it requires a 16GB or larger USB Flash drive. Second, because it's on a Flash drive, it's more difficult to use for installing Windows 11 on a virtual machine where an ISO file would be ideal.

1. Download the latest version of Rufus and install it on your machine. At the time of writing the latest version is 3.17 which includes the Extended Windows 11 Image support.

2. Insert a blank 16GB or larger USB stick then open Rufus.

3. Select the USB device that you want to install Windows 11 to.

![image](https://user-images.githubusercontent.com/24641464/163526423-c646ffd9-38a5-4e54-b70a-db592566aa49.png)

4. Ensure that Boot Selection shows “Disk or ISO image” and click DOWNLOAD.

![image](https://user-images.githubusercontent.com/24641464/163526472-5274a68e-3ac2-4830-929e-9043cbe008f7.png)

5. Select Windows 11 and click Continue.

![image](https://user-images.githubusercontent.com/24641464/163526481-2850e37f-f067-4952-baca-5a092cc6ceab.png)

6. Select the latest release and click Continue.

![image](https://user-images.githubusercontent.com/24641464/163526491-9e053ff6-2a8b-4fa6-a911-f5bc86e625a6.png)

7. Select the edition and click Continue.

![image](https://user-images.githubusercontent.com/24641464/163526515-669aea28-d23f-46d2-bef9-e28ecc1d39be.png)

8. Select your preferred language and click Continue.

![image](https://user-images.githubusercontent.com/24641464/163526524-ecf2a03b-3d61-4fb9-95b9-fbbd26bcc210.png)

9. Select the architecture (most likely x64) and click Download. A new window will open asking where to save the ISO image. Save it to your Downloads folder. You can also download the image using a browser if you wish.

![image](https://user-images.githubusercontent.com/24641464/163526549-ce9a3a65-e4a5-4bbf-b3d0-6bcc0858e066.png)
The download will take several minutes to complete.

![image](https://user-images.githubusercontent.com/24641464/163526565-12d28686-9a77-4e50-a2eb-5504aa3f7a21.png)

10. Click on the Image option drop down and select Extended Windows 11 Installation to disable TPM, Secure Boot and the 8GB of RAM requirement.

![image](https://user-images.githubusercontent.com/24641464/163526579-df8f7dcc-e2d6-4efa-a536-715d2ff5f566.png)

11. Double check that the correct drive has been selected and click on Start to begin the installation.

![image](https://user-images.githubusercontent.com/24641464/163526594-23b2faa1-6d8a-4867-9a50-8d8a3d12bb4c.png)



The write process can take some time, depending on the USB drive being used, but when done the drive can be removed and used to install Windows 11 on an older computer or even in a virtual machine. 

12. Install or upgrade to Windows 11. Run setup on the USB drive, if you ware doing an in-place install from an existing Windows 10 installation.  Boot off of the drive if you are doing a clean install. Note that you may need to disable secure boot in your BIOS (see how to enter your BIOS) if it gives you a problem.

Run setup.exe to upgrade or boot to do a clean install

![image](https://user-images.githubusercontent.com/24641464/163526617-950d4eb0-cc64-4b61-bc29-a7d84d9d36c8.png)
