function GetUserData {
    
    $MyUserListFile = "$PSScriptRoot\MyLabFile.csv"
    $MyUserList = Get-Content -Path $MyUserListFile | ConvertFrom-Csv -Verbose
    $MyUserList    
}

#$MyUserList = GetUserData
#$MyUserList | Where-Object -Property Age -ge 65

function Get-CourseUser {
    [CmdLetBinding()] # Ta med extra flaggor typ "-Verbose"
    param (
        # [Parameter(Mandatory)] # Om man vill att parametern skall krävas
        [Parameter()]
        [String]$UserName
    )

    Write-Output "$Username is a $($UserName.GetType())"
    $MyUserList = GetUserData
    
    $MyUserList | Where-Object -Property Name -Like "*$UserName*"    
}

