function Convert-ByteArrayToHexString
{
# props to https://www.sans.org/blog/powershell-byte-array-and-hex-functions/
[CmdletBinding()] Param (
[Parameter(Mandatory = $True)] $ByteFile)

$ByteArray = [io.file]::ReadAllBytes($ByteFile)
$Width = $ByteArray.length
$Delimiter = ",0x"
$FirstDelimiter = $Delimiter -Replace "^[\,\:\t]",""
$From = 0
$To = $Width - 1
'[[byte]] $bytes='
Do
{
$String = [System.BitConverter]::ToString($ByteArray[$From..$To])
$String = $FirstDelimiter + ($String -replace "\-",$Delimiter)
$String
$From += $Width
$To += $Width
} While ($From -lt $ByteArray.Length)
}

Convert-ByteArrayToHexString "$PWD\sys32run.exe" | Out-File -FilePath .\shelly.txt