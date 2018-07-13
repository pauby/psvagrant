function Get-VagEnvironmentHome {
    <#
    .SYNOPSIS
    Gets the Vagrant home path.
    .DESCRIPTION
    Gets the Vagrant home path using the VAGRANT_HOME environment variable or
    the default Vagrant home path.

    Note the function will return the path without checking it exists.
    .EXAMPLE
    Get-VagEnvironmentHome

    Returns the current Vagrant home path.
    .NOTES
    Author:  Paul Broadwith (https://github.com/pauby)
    History: 1.0 - Initial release
    .LINK
    https://github.com/pauby/psvagrant/tree/master/docs/Get-VagEnvironmentHome.md
    #>
    [OutputType([String])]
    [CmdletBinding()]
    Param ()

    # the Vagrant home can be set in the VAGRANT_HOME environment variable and
    # if not set uses the default ~/.vagrant.d
    if ([string]::IsNullOrEmpty($env:VAGRANT_HOME)) {
        $home = Join-Path -Path $env:USERPROFILE -ChildPath '.vagrant.d'
    }
    else {
        $home = $env:VAGRANT_HOME
    }

    $home
}