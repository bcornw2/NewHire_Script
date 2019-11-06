# NewHire_Script
Powershell script to automate new hire process

This script launches a Powershell GUI window using the built-in Windows.Forms module, and uses that as a vehicle to build new AD accounts for a hybrid cloud/on-prem environment. In this case, the domain controller is on prem while most of the services like email and storage are in the cloud. The window will allow for the customization of user group sets through check-boxes during creation, and also by "copying", or mirroring an active or disabled user to whom the new user would have identical or similar access. This script also adds users to a modifiable series of "default groups" that every new user should be joined to. It also creates a home directory linked directly in the profile tab of the user's AD properties, and assigned a correct ACL using non-default-setting directory creataion which allows the admin to create that Home Drive and assign access to it only to that user being created and Domain Admins. 

[Image of GUI Window](https://imgur.com/Azx6IjO)

___
TODO://
 - Clean up input validation
 - Clean up password validation to meet AD requirements
 - Audit current group memberships
