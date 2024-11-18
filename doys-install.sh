#!/bin/bash

## This script will install the DrawOnYourScreen GNOME extension to Linux systems with the GNOME desktop environment.

## TODO: Potentially, add variables for indentified GNOME versions to simpligy the case portion of the script.

# Initial checks

clear -x
printf "\n\033[7;31mTHIS SCRIPT WILL INSTALL DRAWONYOURSCREEN (DOYS) FOR THE GNOME DESKTOP! \033[0m"
printf '%.0s\n' {1..2}
read -p "Are you sure you want to proceed? (y,n): " -r response
printf '%.0s\n' {1..2}
if [[ $response =~ ^[Yy]$ ]]; then
start=$SECONDS
printf "\n\033[7;32mSTARTING DRAWONYOURSCREEN INSTALL PROCESS IN 5 SECONDS! PRESS 'CTRL+C' TO TERMINATE. \033[0m"
echo
sleep 5 &
for ((i=5; i>0; i--)); do echo -ne "Countdown: $i\033[0K\r"; sleep 1; done; echo -e "\033[KBEGIN!!"
echo


# Function to check GNOME Shell version
check_gnome_version() {
    gnome_version=$(gnome-shell --version | awk '{print $3}' | awk '{print substr($0,1,2)}')    
    echo $gnome_version
}

# Make temporary directory
mkdir temp-doys
cd temp-doys || return

# Main script execution
main() {
    # Get the GNOME Shell version
    gnome_version=$(check_gnome_version)

    # Determine which extension to install based on the GNOME version and download/install it.
    case $gnome_version in                
        42)
            echo "Downloading DOYS extension for GNOME version 42"
            echo;echo
            wget -q https://github.com/daveprowse/DrawOnYourScreen3/releases/download/v13.0-GNOME-v42-v44/GNOMEv42.tar.xz
            tar -xf GNOMEv42.tar.xz
            mv GNOMEv42/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        43)            
            echo "Downloading DOYS extension for GNOME version 43"
            echo;echo
            wget -q https://github.com/daveprowse/DrawOnYourScreen3/releases/download/v13.0-GNOME-v42-v44/GNOMEv42.tar.xz
            tar -xf GNOMEv42.tar.xz
            mv GNOMEv42/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        44)
            echo "Downloading DOYS extension for GNOME version 44"
            echo;echo
            wget -q https://github.com/daveprowse/DrawOnYourScreen3/releases/download/v13.0-GNOME-v42-v44/GNOMEv42.tar.xz
            tar -xf GNOMEv42.tar.xz
            mv GNOMEv42/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        
        45)

            ;;
        46)
            
            ;;
        47)

            ;;
        *)
            echo "Unsupported GNOME Shell version: $gnome_version. Exiting."
            exit 1
            ;;
    esac
}

# Run the main function
main

# Clean UP!
cd ..
rm -rf temp-doys/
sleep 1

# Completion messages
printf "\nTime to complete = %s seconds" "$SECONDS"
echo
printf "\n\033[7;32mPROCESS COMPLETE! \n
IF YOU DID NOT SEE ANY ERRORS, THEN DRAWONYOURSCREEN SHOULD NOW BE INSTALLED.\033[0m"
printf '%.0s\n' {1..2}
echo -e "Next steps:  \n
1. Logout and log back in. \n
   (if you are using Xorg, you can press Alt+F2, then type 'r' and press Enter to restart the Gnome desktop) \n
2. If necessary, enable the DrawOnYourScreen extension \n
   - CLI: Type 'gnome-extensions enable draw-on-your-screen2@zhrexl.github.com' \n  
   - GUI: Install and run 'gnome-extensions-app' and enable the extension. \n
3. Press 'Super+Alt+D' and start having fun! \n"
echo
printf "\n\033[7;36m ENJOY! If you have any issues, consider installing manually or post an issue on GitHub. \n
https://github.com \033[0m"
## add link above and below

printf '%.0s\n' {1..3}

# completion of the original if-else statement (if cancelled)
else
  echo -e "Installation cancelled. \n 
If this was unexpected or you have any issues, consider installing manually or post an issue on GitHub. \n"
fi