# TBHS.sh
佇上新版 macOS 安裝教育部「臺灣閩南語漢字輸入法」的 Shell Ccript。

## 步驟

1. 執行「Terminal（終端機）」或者是「iTerm」
2. 將下面的命令貼入去，揤 enter：

```zsh
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
```

3. 系統會出現「Apple 無法驗證⋯⋯」，請點「完成」。
4. 到「系統設定」的「隱私權與安全性」（下面）點「強制打開」
5. 到「系統設定」的「隱私權與安全性」（中央）點「輔助使用」
6. 點「＋」，將`/Library/Input Methods/TBHS.app (教育部臺灣閩南語漢字輸入法.app)`加入
7. 重新開機
8. 到「系統設定」的「鍵盤」點「輸入方式」邊仔的「編輯⋯」
9. 點「＋」，將「繁體中文」內面的「漢字模式」佮「臺羅模式」加入

- 補充1：過程當中，會出現輸入密碼、Touch ID 認證的所在，照指示操作。
- 補充2：若過程當中，系統提示「需要 Rosetta」，就照指示安裝。（無一定會出現）