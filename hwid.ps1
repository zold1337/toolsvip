# ================================================
# Gerador HWID Simples e Seguro
# Componentes: MB + CPU + BIOS + Disco
# ================================================

$ErrorActionPreference = 'SilentlyContinue'

# Coleta dos componentes com proteção máxima
$mb   = try { (Get-CimInstance Win32_BaseBoard).SerialNumber } catch { "" }
$cpu  = try { (Get-CimInstance Win32_Processor).ProcessorId } catch { "" }
$disk = try { (Get-CimInstance Win32_DiskDrive | Where-Object {$_.MediaType -like '*Fixed*'} | Select-Object -First 1).SerialNumber } catch { "" }
$bios = try { (Get-CimInstance Win32_BIOS).SerialNumber } catch { "" }

# Monta raw
$raw = "$mb`_$cpu`_$disk`_$bios"

# === DETECÇÃO DE SPOOF ===
$status = 'VALID'
$spoofScore = 0

$mb = $mb.Trim()
$cpu = $cpu.Trim()
$disk = $disk.Trim()
$bios = $bios.Trim()

if([string]::IsNullOrWhiteSpace($mb) -or $mb.Length -lt 4) { $spoofScore++ }
if([string]::IsNullOrWhiteSpace($cpu) -or $cpu.Length -lt 8) { $spoofScore++ }
if([string]::IsNullOrWhiteSpace($disk) -or $disk.Length -lt 6) { $spoofScore++ }
if([string]::IsNullOrWhiteSpace($bios) -or $bios -match '^(Default|System|To Be Filled|OEM|None)$') { $spoofScore++ }

if($spoofScore -ge 3) { 
    $status = 'SUSPECT' 
} elseif($spoofScore -ge 2) { 
    $status = 'WARNING' 
}

# Criptografia (SHA512 + Salt)
$salt = "xAI_Hwid_Salt_2026"
$rawWithSalt = $raw + $salt

$bytes = [Text.Encoding]::UTF8.GetBytes($rawWithSalt)
$hash = [System.Security.Cryptography.SHA512]::Create().ComputeHash($bytes)

$hex = ''
foreach($b in $hash) {
    $hex += $b.ToString('X2')
}

# Fallback em caso de falha total
if([string]::IsNullOrWhiteSpace($hex) -or $hex.Length -lt 20) {
    $hex = "ERROR_" + (Get-Random -Maximum 999999999999)
    $status = 'UNKNOWN_ERROR'
}

# Saída simples para o .bat capturar
Write-Output "$hex|$status"
