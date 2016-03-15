cd /tmp
ANDROID_STUDIO_VERSION=2.1.0.0
IDE_VERSION=143.2664576
ANDROID_STUDIO_ZIP=android-studio-ide-${IDE_VERSION}-linux.zip 
if [ -e $ANDROID_STUDIO_ZIP ]; then 
  echo "Android studio already downloaded"
else
  echo "Start downloading the application"
  wget https://dl.google.com/dl/android/studio/ide-zips/${ANDROID_STUDIO_VERSION}/android-studio-ide-${IDE_VERSION}-linux.zip
fi
ANDROID_STUDIO_FOLDER=android-studio
if [ -d $ANDROID_STUDIO_FOLDER ]; then 
  echo "Android stuido folder already existed"
else
  echo "Extract Android Studio zip"
  unzip $ANDROID_STUDIO_ZIP
fi

mv $ANDROID_STUDIO_FOLDER /opt

FILE_NAME=~/.local/share/applications/android-studio.desktop

if [ -e $FILE_NAME ]; then 
  echo "Recreated the desktop file"
  echo "[Desktop Entry]" > ${FILE_NAME}
  echo "Version=1.0" >> ${FILE_NAME}
  echo "Name=Android Studio" >> ${FILE_NAME}
  echo "Exec=/opt/android-studio/bin/studio.sh" >> ${FILE_NAME}
  echo "Icon=/opt/android-studio/bin/studio.png" >> ${FILE_NAME}
  echo "Terminal=false" >> ${FILE_NAME}
  echo "Type=Application" >> ${FILE_NAME}
  echo "Categories=Development" >> ${FILE_NAME}
else
  echo "Create new desktop file"
  touch ${FILE_NAME}
  echo "[Desktop Entry]" >> ${FILE_NAME}
  echo "Version=1.0" >> ${FILE_NAME}
  echo "Name=Android Studio" >> ${FILE_NAME}
  echo "Exec=/opt/android-studio/bin/studio.sh" >> ${FILE_NAME}
  echo "Icon=/opt/android-studio/bin/studio.png" >> ${FILE_NAME}
  echo "Terminal=false" >> ${FILE_NAME}
  echo "Type=Application" >> ${FILE_NAME}
  echo "Categories=Development" >> ${FILE_NAME}
fi
