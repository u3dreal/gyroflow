VERSION_STRING=0.2.1

pyinstaller --onefile gyroflow.py
cp -vr camera_presets ./dist

hdiutil create gyroflow-$VERSION_STRING-osx.dmg -volname "gyroflow-$VERSION_STRING" -fs HFS+ -srcfolder dist/
