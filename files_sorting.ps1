# get the files to be moved and saving them into variable "files" as list
$files = Get-ChildItem 'E:\Zdjecia\Pictures\Z telefonu' -Recurse | where {!$_.PsIsContainer}
$targetPath = 'E:\Zdjecia\Pictures\Albumy'

foreach ($file in $files)
{
# creating variables month and year
$year = $file.LastWriteTime.Year.ToString()
$month = $file.LastWriteTime.Month.ToString()
 
# creating variable to store new directory
$Directory = $targetPath + "\" + $year + "\" + $month
# Create directory if it doesn't exsist
if (!(Test-Path $Directory))
{
New-Item $directory -type directory
}
 
# Move File to new location
$file | Move-Item -Destination $Directory
}