function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $Name,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseName,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseServer,

        [parameter(Mandatory = $true)]
        [System.String]
        $ApplicationPool,

        [ValidateSet("Present","Absent")]
        [System.String]
        $Ensure = "Present",

        [System.Management.Automation.PSCredential]
        $InstallAccount
    )
    Write-Verbose -Message "Getting Machine Translation Service Application '$Name'"
   
    $result = Invoke-SPDSCCommand -Credential $InstallAccount `
                                  -Arguments $PSBoundParameters `
                                  -ScriptBlock {
        $params = $args[0]
    }
    
    return $result
}


function Set-TargetResource
{
    [CmdletBinding()]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $Name,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseName,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseServer,

        [parameter(Mandatory = $true)]
        [System.String]
        $ApplicationPool,

        [ValidateSet("Present","Absent")]
        [System.String]
        $Ensure = "Present",

        [System.Management.Automation.PSCredential]
        $InstallAccount
    )

    #Write-Verbose "Use this cmdlet to deliver information about command processing."

    #Write-Debug "Use this cmdlet to write debug information while troubleshooting."

    #Include this line if the resource requires a system reboot.
    #$global:DSCMachineStatus = 1


}


function Test-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param
    (
               [parameter(Mandatory = $true)]
        [System.String]
        $Name,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseName,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseServer,

        [parameter(Mandatory = $true)]
        [System.String]
        $ApplicationPool,

        [ValidateSet("Present","Absent")]
        [System.String]
        $Ensure = "Present",

        [System.Management.Automation.PSCredential]
        $InstallAccount
    )

    #Write-Verbose "Use this cmdlet to deliver information about command processing."

    #Write-Debug "Use this cmdlet to write debug information while troubleshooting."


    <#
    $result = [System.Boolean]
    
    $result
    #>
}


Export-ModuleMember -Function *-TargetResource

