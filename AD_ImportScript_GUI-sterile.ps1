<# Created by Ben Cornwell
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ImportGUI                       = New-Object system.Windows.Forms.Form
$ImportGUI.ClientSize            = '500,400'
$ImportGUI.text                  = "GUI AD User Import Form"
$ImportGUI.TopMost               = $false

$Firstname                       = New-Object system.Windows.Forms.TextBox
$Firstname.multiline             = $false
$Firstname.text                  = "First Name"
$Firstname.width                 = 100
$Firstname.height                = 20
$Firstname.location              = New-Object System.Drawing.Point(120,55)
$Firstname.Font                  = 'Microsoft Sans Serif,10'
$Firstname.TabIndex=0


$Lastname                        = New-Object system.Windows.Forms.TextBox
$Lastname.multiline              = $false
$Lastname.text                   = "Lastname"
$Lastname.width                  = 160
$Lastname.height                 = 20
$Lastname.location               = New-Object System.Drawing.Point(120,85)
$Lastname.Font                   = 'Microsoft Sans Serif,10'
$Lastname.TabIndex=1

$Username                        = New-Object system.Windows.Forms.TextBox
$Username.multiline              = $false
$Username.text                   = "Username"
$Username.width                  = 160
$Username.height                 = 20
$Username.location               = New-Object System.Drawing.Point(120,115)
$Username.Font                   = 'Microsoft Sans Serif,10'
$Username.TabIndex=2

$Password                        = New-Object system.Windows.Forms.TextBox
$Password.multiline              = $false
$Password.text                   = "Desired User Password"
$Password.width                  = 160
$Password.height                 = 20
$Password.location               = New-Object System.Drawing.Point(120,145)
$Password.Font                   = 'Microsoft Sans Serif,10'
$Password.TabIndex=3

$mirror                          = New-Object system.Windows.Forms.TextBox
$mirror.multiline                = $false
$mirror.text                     = "Username"
$mirror.width                    = 160
$mirror.height                   = 20
$mirror.location                 = New-Object System.Drawing.Point(35,210)
$mirror.Font                     = 'Microsoft Sans Serif,10'
$mirror.TabIndex=4

$expMirror                       = New-Object system.Windows.Forms.Label
$expMirror.text                  = "Please enter the username of the user whose access this new user should mirror. "
$expMirror.AutoSize              = $true
$expMirror.width                 = 25
$expMirror.height                = 60
$expMirror.location              = New-Object System.Drawing.Point(19,191)
$expMirror.Font                  = 'Microsoft Sans Serif,10'

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Format:  jsmith"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(195,212)
$Label2.Font                     = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Please select any additional groups that the user should be added to:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(20,245)
$Label1.Font                     = 'Microsoft Sans Serif,10'


$Policy                          = New-Object system.Windows.Forms.CheckBox
$Policy.text                  = "Policy"
$Policy.AutoSize              = $false
$Policy.width                 = 95
$Policy.height                = 20
$Policy.location              = New-Object System.Drawing.Point(30,265)
$Policy.Font                  = 'Microsoft Sans Serif,10'
$Policy.TabIndex=5

$Acct                            = New-Object system.Windows.Forms.CheckBox
$Acct.text                       = "Acct"
$Acct.AutoSize                   = $false
$Acct.width                      = 95
$Acct.height                     = 20
$Acct.location                   = New-Object System.Drawing.Point(30,285)
$Acct.Font                       = 'Microsoft Sans Serif,10'
$Acct.TabIndex=6

$Finance                         = New-Object system.Windows.Forms.CheckBox
$Finance.text                    = "Finance"
$Finance.AutoSize                = $false
$Finance.width                   = 95
$Finance.height                  = 20
$Finance.location                = New-Object System.Drawing.Point(30,305)
$Finance.Font                    = 'Microsoft Sans Serif,10'
$Finance.TabIndex=7

$ExecOffice                      = New-Object system.Windows.Forms.CheckBox
$ExecOffice.text                 = "Exec Office"
$ExecOffice.AutoSize             = $false
$ExecOffice.width                = 95
$ExecOffice.height               = 20
$ExecOffice.location             = New-Object System.Drawing.Point(30,325)
$ExecOffice.Font                 = 'Microsoft Sans Serif,10'
$ExecOffice.TabIndex=8

$ManagementTeam                  = New-Object system.Windows.Forms.CheckBox
$ManagementTeam.text             = "Management Team"
$ManagementTeam.AutoSize         = $false
$ManagementTeam.width            = 145
$ManagementTeam.height           = 20
$ManagementTeam.location         = New-Object System.Drawing.Point(135,265)
$ManagementTeam.Font             = 'Microsoft Sans Serif,10'
$ManagementTeam.TabIndex=9

$AdvocacyStaff                       = New-Object system.Windows.Forms.CheckBox
$AdvocacyStaff.text                  = "Advocacy Staff"
$AdvocacyStaff.AutoSize              = $false
$AdvocacyStaff.width                 = 130
$AdvocacyStaff.height                = 20
$AdvocacyStaff.location              = New-Object System.Drawing.Point(135,285)
$AdvocacyStaff.Font                  = 'Microsoft Sans Serif,10'
$AdvocacyStaff.TabIndex=10

$Owncloud                       = New-Object system.Windows.Forms.CheckBox
$Owncloud.text                  = "Nextcloud Users"
$Owncloud.AutoSize              = $false
$Owncloud.width                 = 130
$Owncloud.height                = 20
$Owncloud.location              = New-Object System.Drawing.Point(135,305)
$Owncloud.Font                  = 'Microsoft Sans Serif,10'
$Owncloud.TabIndex=11

$EDUCATION                       = New-Object system.Windows.Forms.CheckBox
$EDUCATION.text                  = "EDUCATION"
$EDUCATION.AutoSize              = $false
$EDUCATION.width                 = 130
$EDUCATION.height                = 20
$EDUCATION.location              = New-Object System.Drawing.Point(135,325)
$EDUCATION.Font                  = 'Microsoft Sans Serif,10'
$EDUCATION.TabIndex=12

$TSUsers                         = New-Object system.Windows.Forms.CheckBox
$TSUsers.text                    = "TS Users"
$TSUsers.AutoSize                = $false
$TSUsers.width                   = 95
$TSUsers.height                  = 20
$TSUsers.location                = New-Object System.Drawing.Point(285,265)
$TSUsers.Font                    = 'Microsoft Sans Serif,10'
$TSUsers.TabIndex=13

$imisTS                          = New-Object system.Windows.Forms.CheckBox
$imisTS.text                     = "iMIS_TS"
$imisTS.AutoSize                 = $false
$imisTS.width                    = 95
$imisTS.height                   = 20
$imisTS.location                 = New-Object System.Drawing.Point(285,285)
$imisTS.Font                     = 'Microsoft Sans Serif,10'
$imisTS.TabIndex=14

$topLabel                        = New-Object system.Windows.Forms.Label
$topLabel.text                   = "New User Account Creation Tool"
$topLabel.AutoSize               = $true
$topLabel.width                  = 25
$topLabel.height                 = 10
$topLabel.location               = New-Object System.Drawing.Point(20,11)
$topLabel.Font                   = 'Microsoft Sans Serif,13'

$subLabel                        = New-Object system.Windows.Forms.Label
$subLabel.text                   = "Please double check every entry carefully,"
$subLabel.AutoSize               = $true
$subLabel.width                  = 25
$subLabel.height                 = 10
$subLabel.location               = New-Object System.Drawing.Point(20,35)
$subLabel.Font                   = 'Microsoft Sans Serif,10'

$credit                          = New-Object system.Windows.Forms.Label
$credit.text                     = "Created by Ben Cornwell"
$credit.AutoSize                 = $true
$credit.width                    = 25
$credit.height                   = 10
$credit.location                 = New-Object System.Drawing.Point(120,380)
$credit.Font                     = 'Microsoft Sans Serif,6'

$fname                           = New-Object system.Windows.Forms.Label
$fname.text                      = "First Name: "
$fname.AutoSize                  = $true
$fname.width                     = 25
$fname.height                    = 10
$fname.location                  = New-Object System.Drawing.Point(35,55)
$fname.Font                      = 'Microsoft Sans Serif,10,style=Bold'

$lname                           = New-Object system.Windows.Forms.Label
$lname.text                      = "Last Name:"
$lname.AutoSize                  = $true
$lname.width                     = 25
$lname.height                    = 10
$lname.location                  = New-Object System.Drawing.Point(35,85)
$lname.Font                      = 'Microsoft Sans Serif,10,style=Bold'

$uname                           = New-Object system.Windows.Forms.Label
$uname.text                      = "Username: "
$uname.AutoSize                  = $true
$uname.width                     = 25
$uname.height                    = 10
$uname.location                  = New-Object System.Drawing.Point(35,115)
$uname.Font                      = 'Microsoft Sans Serif,10,style=Bold'

$passwd                           = New-Object system.Windows.Forms.Label
$passwd.text                      = "Password: "
$passwd.AutoSize                  = $true
$passwd.width                     = 25
$passwd.height                    = 10
$passwd.location                  = New-Object System.Drawing.Point(35,145)
$passwd.Font                      = 'Microsoft Sans Serif,10,style=Bold'

$Disclaim                           = New-Object system.Windows.Forms.Label
$Disclaim.text                      = "Please use Tab and Shift+Tab"
$Disclaim.AutoSize                  = $true
$Disclaim.width                     = 25
$Disclaim.height                    = 10
$Disclaim.location                  = New-Object System.Drawing.Point(290,15)
$Disclaim.Font                      = 'Microsoft Sans Serif,10,style=Bold'
$Disclaim1                           = New-Object system.Windows.Forms.Label
$Disclaim1.text                      = "buttons to navigate."
$Disclaim1.AutoSize                  = $true
$Disclaim1.width                     = 25
$Disclaim1.height                    = 10
$Disclaim1.location                  = New-Object System.Drawing.Point(290,30)
$Disclaim1.Font                      = 'Microsoft Sans Serif,10,style=Bold'

$passreqs                           = New-Object system.Windows.Forms.Label
$passreqs.text                      = "Password must be at least 8 chars,"
$passreqs.AutoSize                  = $true
$passreqs.width                     = 25
$passreqs.height                    = 10
$passreqs.location                  = New-Object System.Drawing.Point(290,85)
$passreqs.Font                      = 'Microsoft Sans Serif,8'
$passreqs1                           = New-Object system.Windows.Forms.Label
$passreqs1.text                      = "and meet at least 3 out of these 4 reqs.:"
$passreqs1.AutoSize                  = $true
$passreqs1.width                     = 25
$passreqs1.height                    = 10
$passreqs1.location                  = New-Object System.Drawing.Point(290,100)
$passreqs1.Font                      = 'Microsoft Sans Serif,8'
$passreqs2                           = New-Object system.Windows.Forms.Label
$passreqs2.text                      = " - Upper Case"
$passreqs2.AutoSize                  = $true
$passreqs2.width                     = 25
$passreqs2.height                    = 10
$passreqs2.location                  = New-Object System.Drawing.Point(290,115)
$passreqs2.Font                      = 'Microsoft Sans Serif,8'
$passreqs3                           = New-Object system.Windows.Forms.Label
$passreqs3.text                      = " - lower case"
$passreqs3.AutoSize                  = $true
$passreqs3.width                     = 25
$passreqs3.height                    = 10
$passreqs3.location                  = New-Object System.Drawing.Point(290,130)
$passreqs3.Font                      = 'Microsoft Sans Serif,8'
$passreqs4                           = New-Object system.Windows.Forms.Label
$passreqs4.text                      = " - Numbers"
$passreqs4.AutoSize                  = $true
$passreqs4.width                     = 25
$passreqs4.height                    = 10
$passreqs4.location                  = New-Object System.Drawing.Point(290,145)
$passreqs4.Font                      = 'Microsoft Sans Serif,8'
$passreqs5                           = New-Object system.Windows.Forms.Label
$passreqs5.text                      = " - Special Characters"
$passreqs5.AutoSize                  = $true
$passreqs5.width                     = 25
$passreqs5.height                    = 10
$passreqs5.location                  = New-Object System.Drawing.Point(290,160)
$passreqs5.Font                      = 'Microsoft Sans Serif,8'

$Submit                          = New-Object system.Windows.Forms.Button
$Submit.text                     = "Submit"
$Submit.width                    = 60
$Submit.height                   = 30
$Submit.location                 = New-Object System.Drawing.Point(325,355)
$Submit.Font                     = 'Microsoft Sans Serif,10'
$Submit.TabIndex=15

$ImportGUI.controls.AddRange(@($Firstname,$Lastname,$Username,$Disclaim,$Disclaim1,$Password,$Submit,$Policy,$AdvocacyStaff, $Nextcloud,$ExecOffice,$ManagementTeam,$Acct,$Finance,$passreqs,$passreqs1,$passreqs2,$passreqs3,$passreqs4,$passreqs5,$mirror,$expMirror,$passwd,$Label2,$Label1,$topLabel,$subLabel,$credit,$fname,$lname,$uname,$EDUCATION,$TSUsers,$imisTS))

$Submit.Add_Click({
    $Firstname=$Firstname.Text
    $Lastname=$Lastname.Text
    $Username = $Username.Text.ToLower()
    $Fullname = "$Firstname $Lastname"
    $EmailDomain = "contoso.org"
    $Domain = "contoso.local"
    $Email = "$Username@$EmailDomain"
    $OU = "OU=Users,OU=Contoso Users,OU=Contoso,DC=Contoso,DC=local"
    $mirroredUser = $mirror.Text


    if(($Firstname.TextLength -eq 0) -Or ($Lastname.TextLength -eq 0) -Or ($Username.TextLength -eq 0) -Or ($Password.TextLength -eq 0)){
        [System.Windows.Forms.MessageBox]::Show("ERROR: A field was left blank. Press OK to abort.")
        $ImportGUI.DialogResult = 'None'
        $ImportGUI.Close()
        exit}
    #}else{
        if (Get-ADUser -F {SamAccountName -eq $Username}){
            Write-Warning "User: $Username already exists."
        }else{
             New-ADUser `
            -SamAccountName $Username `
            -UserPrincipalName "$Username@$Domain" `
            -Name "$Firstname $Lastname" `
            -GivenName $Firstname `
            -Surname $Lastname `
            -Enabled $True `
            -DisplayName "$Firstname $Lastname" `
            -Path $OU `
            -EmailAddress $Email `
            -AccountPassword (convertto-securestring $Password -AsPlainText -Force) `
            -ChangePasswordAtLogon $False

            $HomeDir ='\\CONTOSO-DC\dfs\Home\{0}' -f $Username
            New-Item -Path "$HomeDir" -ItemType Directory #creates users home drive 
            $acl = Get-Acl $HomeDir
            $identity = "$domain\$Username"
            $rights = "FullControl"
            $inheritanceFlags = "ContainerInherit, ObjectInherit"
            $propagationFlags = "None"
            $accessControlType = "Allow"
            Set-ADUser $username -HomeDrive 'H:' -HomeDirectory $HomeDir

            #Sets correct ACLs on it (only admins and $User are allowed at all)
            $rule = New-Object System.Security.AccessControl.FileSystemAccessRule("$identity","$rights","$inheritanceFlags","$propagationFlags","$accessControlType")
            $acl.AddAccessRule($rule)
            Set-Acl $HomeDir $acl

            #Adds default security groups (not subject to change)
            Add-ADGroupMember -Identity "DefaultGroup 1" -Member $Username
            Add-ADGroupMember -Identity "All Staff" -Member $Username
        }
    #Collection of if statements per group. Each group needs to be audited tbh, i think half
    # of these are legacy junk.
    if ($Policy.Checked)     {  Add-ADGroupMember -Identity "Polciy" -Member $Username  }
    if ($Acct.Checked)     {  Add-ADGroupMember -Identity "Acct" -Member $Username  }
    if ($Finance.Checked)     {  Add-ADGroupMember -Identity "Finance" -Member $Username   }
    if ($ExecOffice.Checked)     {  Add-ADGroupMember -Identity "Exec Office" -Member $Username  }
    if ($ManagementTeam.Checked)     {  Add-ADGroupMember -Identity "Management Team" -Member $Username   }
    if ($AdvocacyStaff.Checked)     {  Add-ADGroupMember -Identity "Advocacy Staff" -Member $Username   }
    if ($OwnCloud.Checked)     {  Add-ADGroupMember -Identity "Nextcloud Users" -Member $Username   }
    if ($EDUCATION.Checked)     {  Add-ADGroupMember -Identity "EDUCATION" -Member $Username   }
    if ($TSUsers.Checked)     {  Add-ADGroupMember -Identity "TS Users" -Member $Username   }
    if ($imisTS.Checked)     {  Add-ADGroupMember -Identity "IMIS Project Team" -Member $Username   }
    
    if (dsquery user -samid $mirroredUser){Get-ADUser -Identity $mirroredUser -Properties memberof | `
    Select-Object -ExpandProperty memberof | `
    Add-ADGroupMember -Members $Username}
    else{
        #User to mirror does not exist. Account created anyway
        [System.Windows.Forms.MessageBox]::Show("User to mirror not Found. Please press OK to continue with account creation.")
        }

    [System.Windows.Forms.MessageBox]::Show("Submission Complete. Please press OK and contact IT to confirm creation.", "Submission Form")
    $ImportGUI.Close()


    })
    


$ImportGUI.showDialog()