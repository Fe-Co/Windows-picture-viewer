# Engedélyezd a régi Windows képnézőt
$regPath = "HKLM:\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations"
New-ItemProperty -Path $regPath -Name ".jpg" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path $regPath -Name ".jpeg" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path $regPath -Name ".png" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path $regPath -Name ".bmp" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path $regPath -Name ".gif" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force

# Fájl társítások beállítása
$assocPath = "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache"
New-ItemProperty -Path $assocPath -Name "PhotoViewer.dll,-5" -Value "Windows Photo Viewer" -PropertyType String -Force

$assocPath2 = "HKCU:\Software\Classes\Applications\photoviewer.dll\Capabilities"
New-Item -Path $assocPath2 -Name "FileAssociations" -Force | Out-Null
New-ItemProperty -Path "$assocPath2\FileAssociations" -Name ".jpg" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path "$assocPath2\FileAssociations" -Name ".jpeg" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path "$assocPath2\FileAssociations" -Name ".png" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path "$assocPath2\FileAssociations" -Name ".bmp" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
New-ItemProperty -Path "$assocPath2\FileAssociations" -Name ".gif" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType String -Force
