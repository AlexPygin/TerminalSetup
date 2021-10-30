FONTS_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip"

# Get and install fonts
if [[ "$OSTYPE" == "linux-gnu"* ]]; then # linux
    echo linux
    curl ${FONTS_URL} --output fonts.zip
    sudo apt-get update && sudo apt-get install unzip
    unzip fonts.zip

    #Caskaydia Cove Nerd Font Complete Mono.ttf

    rm fonts.zip
elif [[ "$OSTYPE" == "darwin"* ]]; then # mac
    echo mac
    curl ${FONTS_URL} --output fonts.zip    
    unzip fonts.zip

    #Caskaydia Cove Nerd Font Complete Mono.ttf

    rm fonts.zip
fi

