$path='test.txt'
$bytes = [io.file]::ReadAllBytes($path)
$str = [BitConverter]::ToString($bytes) -replace '-'
echo $str
# Get-Content('test.txt') | Format-Hex