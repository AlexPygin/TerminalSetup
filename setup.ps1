$FONTS_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip"

echo windows
curl -Uri $FONTS_URL -OutFile fonts.zip
Expand-Archive -Path fonts.zip

Copy-Item "fonts/Caskaydia Cove Nerd Font Complete Mono Windows Compatible.ttf" "C:\Windows\Fonts"
New-ItemProperty -Name "Custom Font Name (TrueType)" -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts" -PropertyType string -Value "Caskaydia Cove Nerd Font Complete Mono Windows Compatible.ttf"

rm fonts.zip
Remove-Item fonts/ -Recurse -Force -Confirm:$false