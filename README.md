# TBHS.sh
佇 macOS Sequoia 15.1+ 安裝**教育部臺灣閩南語漢字輸入法**的 Shell Ccript。

## 專案緣由

自 macOS 15.1 開始，因為安全性問題，教育部臺灣閩南語漢字輸入法的安裝程式無法度紡。毋過，其實主程式是會當紡的！所以，直接共安裝程式內面的主程式掠出來，共囥入去應該囥的所在，就挖溪矣！

## 安裝步驟

1. 執行「Terminal（終端機）」或者是「iTerm」
2. 將下面的命令貼入去，揤 enter：

```zsh
#!/bin/zsh
cd ~
curl -L -o TBHS-Mac-2.4.zip https://language.moe.gov.tw/sujip/TBHS-Mac-2.4.zip && \
unzip TBHS-Mac-2.4.zip && \
rm TBHS-Mac-2.4.zip && \
hdiutil attach TBHS-Mac-2.4.dmg && \
cp /Volumes/TBHS.localized/TBHS-2.4.pkg/Contents/Resources/TBHS-2.4.pax.gz ~/ && \
hdiutil detach /Volumes/TBHS.localized && \
rm TBHS-Mac-2.4.dmg && \
gunzip TBHS-2.4.pax.gz && \
pax -rf TBHS-2.4.pax && \
rm -f TBHS-2.4.pax && \
sudo mv TBHS.app /Library/Input\ Methods/ && \
open /Library/Input\ Methods/TBHS.app
```

3. 系統會出現「Apple 無法驗證⋯⋯」，請點「完成」。
4. 到「系統設定」的「隱私權與安全性」（下面）點「強制打開」
5. 到「系統設定」的「隱私權與安全性」（中央）點「輔助使用」
6. 點「＋」，將`/Library/Input Methods/TBHS.app (教育部臺灣閩南語漢字輸入法.app)`加入
7. 重新開機
8. 到「系統設定」的「鍵盤」點「輸入方式」邊仔的「編輯⋯」
9. 點「＋」，將「繁體中文」內面的「漢字模式」佮「臺羅模式」加入

過程當中，可能會出現需要輸入密碼、驗證 Touch ID、提示「需要 Rosetta」，照指示操作就會使。

## 已知問題
**macOS Tahoe 26 干焦會當用「臺羅模式」**
- 無加入「漢字模式」：會當用「臺羅模式」
- 加入「漢字模式」：規个輸入法無法度紡

## 使用建議

「漢字模式」建議配合「[豆腐台語詞庫](https://tauhu.tw/su-jip-huat/)」使用！