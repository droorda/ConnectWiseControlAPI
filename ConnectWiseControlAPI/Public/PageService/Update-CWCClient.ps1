function Update-CWCClient
{
    [CmdletBinding(SupportsShouldProcess)]
    param (
        [Parameter(Mandatory = $True)]
        [guid[]]$GUID,
        [Parameter(Mandatory = $True)]
        [string]$Group
    )


    if ($PSCmdlet.ShouldProcess($GUID, 'Remove-CWCSession'))
    {
        Invoke-AddSessionEvents -GUID $GUID -Group $Group -SessionEventType 40
    }
}