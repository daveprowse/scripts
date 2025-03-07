#!/bin/bash

## This script will install the Draw On GNOME extension to Linux systems with the GNOME desktop environment.

## TODO: Potentially, add variables for indentified GNOME versions to simplify the case portion of the script.

## Initial checks

clear -x
printf "\n\033[7;31mTHIS SCRIPT WILL INSTALL DRAW ON GNOME FOR THE GNOME DESKTOP! \033[0m"
printf '%.0s\n' {1..2}
read -p "Are you sure you want to proceed? (y,n): " -r response
printf '%.0s\n' {1..2}
if [[ $response =~ ^[Yy]$ ]]; then
start=$SECONDS
printf "\n\033[7;32mSTARTING DRAW ON GNOME INSTALL PROCESS IN 5 SECONDS! PRESS 'CTRL+C' TO TERMINATE. \033[0m"
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
        3.)
            echo "Downloading extension for GNOME version 3.xx"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/v11.2/GNOMEv41.tar.xz
            tar -xf GNOMEv41.tar.xz
            mv GNOMEv41/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        40)
            echo "Downloading extension for GNOME version 40"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/v11.2/GNOMEv41.tar.xz
            tar -xf GNOMEv41.tar.xz
            mv GNOMEv41/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        41)
            echo "Downloading extension for GNOME version 41"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/v11.2/GNOMEv41.tar.xz
            tar -xf GNOMEv41.tar.xz
            mv GNOMEv41/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        42)
            echo "Downloading extension for GNOME version 42"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/v13.0-GNOME-v42-v44/GNOMEv42.tar.xz
            tar -xf GNOMEv42.tar.xz
            mv GNOMEv42/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        43)            
            echo "Downloading extension for GNOME version 43"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/v13.0-GNOME-v42-v44/GNOMEv42.tar.xz
            tar -xf GNOMEv42.tar.xz
            mv GNOMEv42/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        44)
            echo "Downloading extension for GNOME version 44"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/v13.0-GNOME-v42-v44/GNOMEv42.tar.xz
            tar -xf GNOMEv42.tar.xz
            mv GNOMEv42/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        
        45)
            echo "Downloading extension for GNOME version 45"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/v14.0-GNOME-v45/GNOMEv45.tar.xz
            tar -xf GNOMEv45.tar.xz
            mv GNOMEv45/ draw-on-your-screen3@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-your-screen3@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        46)
            echo "Downloading extension for GNOME version 46"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/D.O.G.-ver-1.0/Draw-On-GNOME-ver-1.tar.xz
            tar -xf Draw-On-GNOME-ver-1.tar.xz
            mv Draw-On-GNOME draw-on-gnome@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-gnome@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        47)
            echo "Downloading extension for GNOME version 47"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/D.O.G.-ver-1.0/Draw-On-GNOME-ver-1.tar.xz
            tar -xf Draw-On-GNOME-ver-1.tar.xz
            mv Draw-On-GNOME draw-on-gnome@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-gnome@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
            ;;
        48)
            echo "Downloading extension for GNOME version 48"
            echo;echo
            wget -q https://github.com/daveprowse/Draw-On-GNOME/releases/download/D.O.G.-ver-1.0/Draw-On-GNOME-ver-1.tar.xz
            tar -xf Draw-On-GNOME-ver-1.tar.xz
            mv Draw-On-GNOME draw-on-gnome@daveprowse.github.io/
            if [ ! -d ~/.local/share/gnome-shell/extensions ]; then
                echo "Creating extensions directory..."
                mkdir -p ~/.local/share/gnome-shell/extensions
            fi            
            cp -r draw-on-gnome@daveprowse.github.io/ ~/.local/share/gnome-shell/extensions/
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
IF YOU DID NOT SEE ANY ERRORS, THEN DRAW ON GNOME SHOULD NOW BE INSTALLED.\033[0m"
printf '%.0s\n' {1..2}
echo -e "Next steps:  \n
1. Logout and log back in. \n
   (if you are using Xorg, you can press Alt+F2, then type 'r' and press Enter to restart the Gnome desktop) \n
2. Enable the DrawOnYourScreen extension (if necessary): \n
   - CLI: Type 'gnome-extensions enable draw-on-gnome@daveprowse.github.io' \n  
   - GUI: Install and run 'gnome-extensions-app' and enable the extension. \n
3. Press 'Super+Alt+D' and start having fun! \n"
echo
printf "\n\033[7;36mENJOY! If you have any issues, consider installing manually or post an issue on GitHub. \n
https://github.com/daveprowse/Draw-On-GNOME/issues \033[0m"
## add link above and below

printf '%.0s\n' {1..3}

# completion of the original if-else statement (if cancelled)
else
  echo -e "Installation cancelled. \n 
If this was unexpected or you have any issues, consider installing manually or post an issue on GitHub. \n
https://github.com/daveprowse/Draw-On-GNOME/issues"
fi