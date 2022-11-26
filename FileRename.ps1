#this file will count the number of files in the images folder and rename them numerically up to that number
set-location C:\Project\Images
$FileName=(get-childitem).name
$i=1
get-childitem *.png | %{rename-item $_ -NewName ("$i.png" -f $i++)}
