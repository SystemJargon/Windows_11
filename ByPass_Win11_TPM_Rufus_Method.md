How to Bypass Windows 11's TPM Requirement Using Rufus

With Rufus, a free utility, you can create a Windows 11 install disk on a USB Flash drive with settings that disable the TPM, RAM and CPU requirements. You can either boot off of this USB Flash drive to do a clean Windows 11 install or run the setup file off of the drive from within Windows 10 to do an in-place upgrade.

For most people, this method is ideal, but there are a couple of disadvantages. First, it requires a 16GB or larger USB Flash drive. Second, because it's on a Flash drive, it's more difficult to use for installing Windows 11 on a virtual machine where an ISO file would be ideal.

1. Download the latest version of Rufus and install it on your machine. At the time of writing the latest version is 3.17 which includes the Extended Windows 11 Image support.

2. Insert a blank 16GB or larger USB stick then open Rufus.

3. Select the USB device that you want to install Windows 11 to.

Select USB drive
[https://cdn.mos.cms.futurecdn.net/8fUAXyvNoSRFFAMK5ivCbH-970-80.png]

4. Ensure that Boot Selection shows “Disk or ISO image” and click DOWNLOAD.

click Download
(Image credit: Tom's Hardware)

5. Select Windows 11 and click Continue.

select windows 11
(Image credit: Tom's Hardware)

6. Select the latest release and click Continue.

select latest release
(Image credit: Tom's Hardware)

7. Select the edition and click Continue.

select edition
(Image credit: Tom's Hardware)

8. Select your preferred language and click Continue.

select language
(Image credit: Tom's Hardware)

9. Select the architecture (most likely x64) and click Download. A new window will open asking where to save the ISO image. Save it to your Downloads folder. You can also download the image using a browser if you wish.

Select architecture and click download
(Image credit: Tom's Hardware)

The download will take several minutes to complete.

wait for download
(Image credit: Tom's Hardware)

10. Click on the Image option drop down and select Extended Windows 11 Installation to disable TPM, Secure Boot and the 8GB of RAM requirement.

select extended windows 11 installation
(Image credit: Tom's Hardware)

11. Double check that the correct drive has been selected and click on Start to begin the installation.

click on start
(Image credit: Tom's Hardware)


The write process can take some time, depending on the USB drive being used, but when done the drive can be removed and used to install Windows 11 on an older computer or even in a virtual machine. 

12. Install or upgrade to Windows 11. Run setup on the USB drive, if you ware doing an in-place install from an existing Windows 10 installation.  Boot off of the drive if you are doing a clean install. Note that you may need to disable secure boot in your BIOS (see how to enter your BIOS) if it gives you a problem.

Run setup.exe to upgrade or boot to do a clean install
(Image credit: Tom's Hardware)
