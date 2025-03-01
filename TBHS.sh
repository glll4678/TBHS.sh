#!/bin/zsh
curl -L -o TBHS-Mac-2.4.zip https://language.moe.gov.tw/sujip/TBHS-Mac-2.4.zip && \
unzip TBHS-Mac-2.4.zip && \
rm TBHS-Mac-2.4.zip && \
hdiutil attach TBHS-Mac-2.4.dmg && \
cp /Volumes/TBHS.localized/TBHS-2.4.pkg/Contents/Resources/TBHS-2.4.pax.gz ~/Downloads/ && \
hdiutil detach /Volumes/TBHS.localized && \
rm TBHS-Mac-2.4.dmg && \
gunzip ~/Downloads/TBHS-2.4.pax.gz && \
pax -rf ~/Downloads/TBHS-2.4.pax && \
rm -f ~/Downloads/TBHS-2.4.pax && \
sudo mv ~/Downloads/TBHS.app /Library/Input\ Methods/ && \
open /Library/Input\ Methods/TBHS.app
