#!/bin/zsh

#setup
#MenuBar設定
defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm:ss"                              #日付と時刻のフォーマット（24時間表示、秒表示あり、日付・曜日を表示）
killall SystemUIServer
#Dock設定
defaults write com.apple.dock tilesize -int 64                                                                          #アイコンサイズ       
defaults write com.apple.dock magnification -bool false                                                                 #マウスポインタを近づけた時の拡大の有無
defaults write com.apple.dock largesize -int 70                                                                         #マウスポインタを近づけた時のアイコンサイズ
defaults write com.apple.dock orientation -string "down"                                                                #ドックの位置
defaults write com.apple.dock mineffect -string "scale"                                                                 #ウィンドウをしまう時のエフェクト
defaults write -g AppleWindowTabbingMode -string "fullscreen"                                                           #書類をタブで開く場合を指定
defaults write -g AppleActionOnDoubleClick -string "Maximize"                                                           #ウィンドウのタイトルバーのダブルクリック
defaults write com.apple.dock minimize-to-application -bool true                                                        #ウィンドウをアプリケーションアイコンにしまう
defaults write com.apple.dock launchanim -bool false                                                                    #起動中のアプリケーションをアニメーションで表示
defaults write com.apple.dock autohide -bool true                                                                       #Dockを自動的に表示/非表示
defaults write com.apple.dock show-process-indicators -bool true                                                        #起動済みのアプリケーションにインジケータを表示
defaults write com.apple.dock show-recents -bool false                                                                  #最近使ったアプリケーションをDockに表示
killall Dock
#スクリーンショット設定
defaults write com.apple.screencapture location ~/Pictures                                                              #保存場所を変更
killall SystemUIServer
#finder設定
defaults write NSGlobalDomain AppleShowAllExtensions -bool true                                                         #全ての拡張子のファイルを表示する
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -boolean true                                          #保存ダイアログを詳細設定で表示
defaults write com.apple.finder _FXSortFoldersFirst -bool true                                                          #名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder AnimateWindowZoom -bool true                                                            #フォルダを開くときのアニメーション
defaults write com.apple.finder _FXShowPosixPathInTitle -bool false                                                     #Finderのタイトルバーにフルパスを表示する
defaults write com.apple.finder AppleShowAllFiles true                                                                  #隠しファイルの表示
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false                                              #拡張子変更時の警告を無効化する
defaults write com.apple.finder ShowPathbar -bool true                                                                  #パスバーを表示する
defaults write com.apple.finder ShowTabView -bool true                                                                  #タブバーを表示する
defaults write com.apple.finder ShowStatusBar -bool false                                                               #ステータスバーを表示する
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"                                                     #検索時にデフォルトでカレントディレクトリを検索する
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true                                            #ネットワークストレージに .DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true                                                #USBに .DS_Storeファイルを作成しない
killall Finder
#Safari設定
	#一般
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false                                                       #ファイルのダウンロード後に自動でファイルを開くのを無効化する
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool false                                               #アドレスバーに完全な URL を表示
defaults write com.apple.Safari ShowStatusBar -bool true                                                                #ステータスバーを表示する
	#開発
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true    #Safari の開発・デバッグメニューを有効にする
defaults write com.apple.Safari IncludeDevelopMenu -bool true                                                           #Safari の開発・デバッグメニューを有効にする
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true                                                     #Safari の開発・デバッグメニューを有効にする
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true                                    #Safari の開発・デバッグメニューを有効にする
killall Safari

#install Homebrew and mas-cil
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
wait
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/keisukec/.zprofile
echo "homebrewインストール完了"
echo "これで、brewコマンドを利用してhomebrewのアプリをインストールできます。"
brew install mas
echo "mas-cliインストール完了"
echo "これで、masコマンドを利用して、Mac App Storeのアプリをインストールできます。"

#install GUIapps
typeset -g -a masapps
masapps=(
	#開発
	497799835   #Xcode
	1496833156  #Playgrounds
	1450874784  #Transporter
	899247664   #TestFlight
	640199958   #Developer
	#書類作成
	462054704   #Microsoft Word
	462058435   #Microsoft Excel
	462062816   #Microsoft PowerPoint
	409201541   #Pages
	409203825   #Numbers
	409183694   #Keynote
	#ユーティリティー
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
	microsoft-teams            #Teams
	zoom                       #Zoom
	discord                    #Discord
	#クラウド
	google-drive               #Google Drive
	dropbox                    #Dropbox Drive
	box-drive                  #Box Drive
	#ユーティリティー
	cheatsheet                 #Cheatsheet
	#クリエイティブ
	adobe-creative-cloud       #Adobe Creative Cloud
	#開発
	docker                     #Docker
	android-studio             #Android Studio
	visual-studio-code         #Visual Studio Code
	github                     #Github Desktop
	sf-symbols                 #SF Symbols
	figma                      #Figma
	powershell                 #PowerShell
	)
echo "Casksからインストール開始"
for i in $casksapps; do
	brew install $i --cask
done
echo "Casksからインストール完了"
