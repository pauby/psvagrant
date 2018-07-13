function Get-VagGlobalStatus {
    [CmdletBinding()]
    Param ()
    # this is the file which stores the global index - the path is relative to
    # the Vagrant home.
    $vagIndexPath = Get-VagEnvironmentHome
    Write-Verbose "Using Vagrant home path '$vagIndexPath'"

    "data", "machine-index", "index" | ForEach-Object {
        $vagIndexPath = Join-Path -Path $vagIndexPath -ChildPath $_
    }
    Write-Verbose "Using Vagrant global index status path '$vagIndexPath'"

    if (Test-Path -Path $vagIndexPath -PathType Leaf) {
        # the index file is simply JSON so lets convert it
        $vagMachine = Get-Content -Path $vagIndexPath | ConvertFrom-Json
        # - get a list of the machine names (contained in
        # machines.psobject.properties.name)
        # - use that machine name list to access the underlying machine objects
        # and add the machine name as the id to that object
        # - return the machine object
        $status = $vagmachine.machines.PSObject.Properties | ForEach-Object {
            $obj = New-Object -TypeName PSObject
            $vagmachine.machines.($_.name).psobject.properties | ForEach-Object {
                $obj | Add-Member -MemberType NoteProperty -Name $_.name -value $_.value
            }
            $obj | Add-Member -MemberType NoteProperty -Name 'id' -Value $_.name -PassThru
        }

        Write-Verbose "Found $(@($status).count) running Vagrant machines."
    }
    else {
        Write-Verbose 'Found no running Vagrant machines.'
        $status = $null
    }

    $status
}