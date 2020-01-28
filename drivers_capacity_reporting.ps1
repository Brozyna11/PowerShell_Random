# setting the script to run as administrator
Set-ExecutionPolicy Unrestricted
# calling Get-Date cmdlet as saving it into log.txt file
Get-Date | Out-file F:\PowerShell\log.txt -Append
# calling Get-PSDrive in order to get capacity of the drives together with exact time indicated by the Get-Date function and saving it into log.txt file
Get-PSDrive -PSProvider FileSystem | Out-File F:\PowerShell\log.txt -Append