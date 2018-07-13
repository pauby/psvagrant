function Get-VagLocalStatus {
    [CmdletBinding()]
    Param ()

    Get-VagGlobalStatus | Where-Object { $_.vagrantfile_path -eq (Get-Location).Path.Replace('\', '/')}
}