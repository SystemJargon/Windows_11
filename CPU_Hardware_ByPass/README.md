Windows 11: how to bypass TPM checks during dynamic updates

 
Here is what you need to do:

    Open the GitHub project website of the MediaCreationTool.bat utility.
    Select Code > Download ZIP.
    Extract the ZIP on the target system.
    Open the folder bypass11.
    Right-click on Skip_TPM_Check_on_Dynamic_Update.cmd and select run as administrator.
        If "Windows protected your PC" is displayed, select More info > Run anyway.
    Confirm the UAC prompt that is displayed.

A command prompt window opens that confirms that the bypass has been installed on the system. You may run the script again at any time to remove the bypass again from the system.

A comment at the top of the file reveals that it uses a /Product Server trick for the bypass.

    v7 dynamically skips the anti-consumer windows 11 setup checks via /Product Server trick
    it is most reliable, and only has a 'Windows Server' label cosmetic-ish difference

It is advised to create a backup of the system before you make any change to it, including this one. You may load the cmd file in a plain text editor to look at the code and make sure that it is legitimate.
