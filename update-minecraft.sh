
updateFile="/tmp/Minecraft.deb"

# Downloads update

echo "Downloading update"
curl "https://launcher.mojang.com/download/Minecraft.deb" > $updateFile
echo "Download complete!"

# Kills the launcher

echo "Killing minecraft"
killall minecraft-launcher
echo "Killed all"

# Install update

echo "Updating"
sudo apt install "$updateFile"
echo "Done"

#Run new launcher

minecraft-launcher &
