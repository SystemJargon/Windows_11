

Reset Windows 11 password 

To start with the procedure, you need to boot up with something that can access the NTFS file system. In my case, I always use Windows installation media or Windows PE media.

![image](https://user-images.githubusercontent.com/24641464/162371194-fa9992fd-e95a-4bb9-8742-10f78f4203e8.png)


Windows 11 setup screen


After booting, press Shift+F10 to access the command prompt. If the computer is BitLocker encrypted, click Next and choose Repair your computer, which will allow you to enter the BitLocker recovery key and move forward.

Once you have access to the command prompt, you need to change the directory to the Windows\System32 folder. In previous versions (Windows 10 and older), the system drive was usually accessible under the C: or D: drive. Well, it seems that Microsoft wants to make your hacking life a bit harder, and the drive letter is no longer assigned to the system partition by default. Luckily, you can access the Diskpart tool and assign it yourself.

To do so, start Diskpart and use the list volume command. This will show you all available volumes on the drive. In my case, I know the system is installed on Volume 1, which is the only NTFS partition with enough capacity. Usually, Windows is installed on the first available NTFS partition. At this point, use the select volume 1 command followed by the assign command to get a drive letter assigned.

![image](https://user-images.githubusercontent.com/24641464/162371217-ad55de6e-7564-49ee-857e-86ef6439109a.png)


Assigning a drive letter to a Windows system partition

Exit Diskpart and move forward by changing the directory to C:\Windows\System32 and backing up the executable file you are going to replace. My favorite one is Utilman.exe, but the procedure can also be accomplished with Sethc.exe or DisplaySwitch.exe.

Run the copy Utilman.exe .. command to copy Utilman.exe to the C:\Windows folder.

Next, run copy cmd.exe Utilman.exe to replace the executable with a command prompt.

![image](https://user-images.githubusercontent.com/24641464/162371255-f37b1301-ceca-4051-a887-59e7d250576c.png)

Replacing utilman.exe with a command prompt



At this point, you are ready to exit the setup and boot up the operating system. As we already know from previous experience, Safe mode is required to perform the action. To get into Safe mode, press Restart while holding the Shift key.

![image](https://user-images.githubusercontent.com/24641464/162371274-c09d52f3-98ff-414d-91c6-e2456e3d1972.png)

Click Restart while holding the SHIFT key

Once booted in the troubleshooting splash screen, click Troubleshoot > Advanced Options > Startup Settings > Restart. Select option number 4 to boot into Safe mode.

![image](https://user-images.githubusercontent.com/24641464/162371295-9c57f3e6-210f-4472-ac34-adbe2f1a90be.png)


Select option 4 to boot into Safe mode

After you get to the logon screen, click the Accessibility icon to get the command prompt started.

![image](https://user-images.githubusercontent.com/24641464/162371309-e8bc9677-3371-4885-9713-ba71389cf934.png)


Click the Accessibility icon to launch the command prompt

Now you have a command prompt running under the NT AUTHORITY\SYSTEM account, which allows you to perform various actions. Let's reset our admin account password by using the NET USER admin Passw0rd command. You can also create a new user account and add it to the Administrators group, or open the Management Console (type mmc) and access the Computer Management snap-in.

![image](https://user-images.githubusercontent.com/24641464/162371323-34055d79-14b1-4495-9783-ec7a0e39236e.png)


Resetting the account password

That's it! Now you can close the command prompt and log on to the system with administrative permissions.

To get the system to a clean state, you need to restore the original Utilman.exe. This can be done from an elevated command prompt using the Robocopy C:\Windows C:\Windows\System32 Utilman.exe /B command. As you can see, the Windows 11 taskbar is somehow empty in Safe mode and can't be used to launch anything (yes, we are in the Inside Preview version, but it's quite funny that such a basic thing is not working properly here). To overcome this, simply press the Windows+R keys and type cmd in the Run window, which will launch an elevated command prompt.

![image](https://user-images.githubusercontent.com/24641464/162371338-c6e539a8-6589-44dc-8da2-f2520e9bb06f.png)


Taskbar is missing in Safe mode

Done! All that's left is to reboot the computer to Normal mode.


Source: https://4sysops.com/archives/reset-a-windows-11-password-and-the-windows-server-2022-administrator-password/#reset-windows-11-password

