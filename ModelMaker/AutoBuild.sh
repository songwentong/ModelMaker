#!/bin/sh

#  AutoBuild.sh
#  Stark
#
#  Created by 宋文通 on 2019/10/15.
#  Copyright © 2019 newsdog. All rights reserved.
date
git pull
cd ..
npm i
npm run pack-ios
date
cd ios
pod update
#release
xcodebuild archive -workspace Stark.xcworkspace -scheme Stark -configuration Release -archivePath ~/Desktop/Stark.xcarchive
xcodebuild -exportArchive -archivePath ~/Desktop/Stark.xcarchive -exportPath ~/Desktop/Stark.ipa -exportOptionsPlist ~/Desktop/ExportOptions.plist
#upload fir ifneeded
#fir publish ~/Desktop/Stark.ipa
xcrun altool --validate-app -f $XCS_PRODUCT -u 275712575@qq.com -p swtpwd
xcrun altool --upload-app -f $XCS_PRODUCT -u 275712575@qq.com -p swtpwd

