# sillyfilly-exeloader
![pwnies-gonna-pwn](resources/pwnies.png)

## tl;dr
Powershell lets you download a json file with iwr (Invoke-WebRequest), and if that json file has, maybe, megabytes of byte code [like this](sillyfilly.json) that was simply an [encoded exe](shellexe/) with [this powershell silliness](encode_exe.ps1) you can just decode it, write it to tmp and execute it, bypassing the Mark of the Web.
From there... (coming soon...)