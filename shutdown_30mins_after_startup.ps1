# Simple 30-minute shutdown task at every startup using shutdown.exe delay
$TaskName = "AutoShutdown30MinAfterStartUp"

# Action: shutdown.exe with 30-min timer
$action = New-ScheduledTaskAction -Execute "shutdown.exe" -Argument "/s /f /t 1800"

# Trigger: at startup
$trigger = New-ScheduledTaskTrigger -AtStartup

# Settings: basic
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable

# Principal: SYSTEM account
$principal = New-ScheduledTaskPrincipal -UserId "SYSTEM" -LogonType ServiceAccount -RunLevel Highest

# Register task
Register-ScheduledTask -TaskName $TaskName -Action $action -Trigger $trigger -Settings $settings -Principal $principal -Force

Write-Host "✅ Task '$TaskName' created. PC will shutdown 30 minutes after each startup."
