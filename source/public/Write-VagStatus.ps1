function Write-VagStatus {
    $globalStatus = Get-VagGlobalStatus
    if ($globalStatus) {
        Write-Host '[' -NoNewline
        Write-Host "^$(@($globalStatus | Where-Object state -eq 'running').count)" -ForegroundColor Green -NoNewline
        $saved = @($globalStatus | Where-Object state -eq 'saved').count
        if ($saved -gt 0) {
            Write-Host " ~$saved" -ForegroundColor Magenta -NoNewline
        }

        $localStatus = Get-VagLocalStatus
        if ($localStatus) {
            Write-Host " >$(@($localStatus).count)" -ForegroundColor Cyan -NoNewline
        }
        Write-Host ']' -NoNewline
    }
}