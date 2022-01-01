#!/bin/zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
wait
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/keisukec/.zprofile
echo "homebrewインストール完了"
echo "これで、brewコマンドを利用してhomebrewのアプリをインストールできます。"
brew install mas
echo "mas-cliインストール完了"
echo "これで、masコマンドを利用して、Mac App Storeのアプリをインストールできます。"
typeset -g -a masapps
masapps=(
	#開発
	497799835   #Xcode
	1496833156  #Playgrounds
	1450874784  #Transporter
	899247664   #TestFlight
	640199958   #Developer
	1436522307  #Transmit
	1388020431  #DevCleaner
	1527554407  #Mockup
	1502044457  #Whisk
	1460330618  #Hype 4
	1484781782  #Snippit
	#書類作成
	462054704   #Microsoft Word
	462058435   #Microsoft Excel
	462062816   #Microsoft PowerPoint
	409201541   #Pages
	409203825   #Numbers
	409183694   #Keynote
	#ベンチマーク
	1438772273  #Cinebench
	1478447657  #Geekbench 5
	1168254295  #AmorphousDiskMark
	#ユーティリティー
	1380563956  #辞書 by 物書堂
	413897608   #Pastel
	1494942612  #Morpho
	417375580   #BetterSnapTool
	441968334   #SpeakLine
	1295203466  #Microsoft Remote Desktop
	#クラウド
	823766827   #OneDrive
	#コミュニケーションツール
	803453959   #Slack
	1480068668  #Messenger
	)
echo "Mac App Storeからインストール開始"
for i in $masapps; do
	mas install $i
done
echo "Mac App Storeからインストール完了"
typeset -g -a casksapps
casksapps=(
	#ブラウザ
	google-chrome              #Chrome
	microsoft-edge             #Edge
	brave-browser              #Brave
	firefox                    #Firefox
	safari-technology-preview  #Safari-TP
	google-chrome-dev          #Chrome Div
	microsoft-edge-dev         #Egde Div
	brave-browser-beta         #Brave Beta
	firefox-developer-edition  #Firefox Div
	#コミュニケーションツール
	discord                    #Discord
	microsoft-teams            #Teams
	zoom                       #Zoom
	#クラウド
	google-drive               #Google Drive
	dropbox                    #Dropbox Drive
	box-drive                  #Box Drive
	onedrive                   #One Drive
	#ユーティリティー
	bettertouchtool            #Better Touch Tool
	cheatsheet                 #Cheatsheet
	cleanmymac                 #Clean My Mac X
	#クリエイティブ
	adobe-creative-cloud       #Adobe Creative Cloud
	blender                    #Blender
	figma                      #Figma
	#開発
	docker                     #Docker
	android-studio             #Android Studio
	visual-studio-code         #Visual Studio Code
	github                     #Github Desktop
	sf-symbols
	#ベンチマーク
	blender-benchmark          #Blender Benchmark
	#ゲーム
	steam                      #Steam
	#資料作成
	texshop                    #TeXShop
	)
echo "Casksからインストール開始"
for i in $casksapps; do
	brew install $i --cask
done
echo "Casksからインストール完了"
