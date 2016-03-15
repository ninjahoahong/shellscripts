cd /tmp
ANDROID_STUDIO_VERSION=2.1.0.0
IDE_VERSION=143.2664576
wget https://dl.google.com/dl/android/studio/ide-zips/${ANDROID_STUDIO_VERSION}/android-studio-ide-${IDE_VERSION}-linux.zip
unzip android-studio-ide-${IDE_VERSION}-linux.zip 
mv android-studio /opt
FILE_NAME=~/.local/share/applications/android-studio.desktop
touch ${FILE_NAME}
echo "[Desktop Entry]" >> ${FILE_NAME}
echo "Version=1.0" >> ${FILE_NAME}
echo "Name=Android Studio" >> ${FILE_NAME}
echo "Exec=/opt/android-studio/bin/studio.sh" >> ${FILE_NAME}
echo "Icon=/opt/android-studio/bin/studio.png" >> ${FILE_NAME}
echo "Terminal=false" >> ${FILE_NAME}
echo "Type=Application" >> ${FILE_NAME}
echo "Categories=Development" >> ${FILE_NAME}
