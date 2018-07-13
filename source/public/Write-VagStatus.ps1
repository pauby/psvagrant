function Write-VagStatus {
    $globalStatus = Get-VagGlobalStatus
    if ($globalStatus) {
        Write-Host '[' -NoNewline
        Write-Host "^$(@($globalStatus).count)" -ForegroundColor Green -NoNewline

        $localStatus = Get-VagLocalStatus
        if ($localStatus) {
            Write-Host " >$(@($localStatus).count)" -ForegroundColor Cyan -NoNewline
        }
        Write-Host ']' -NoNewline
    }
}