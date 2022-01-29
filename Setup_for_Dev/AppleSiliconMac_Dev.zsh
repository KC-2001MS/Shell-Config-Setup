#!/bin/zsh

#setup
#一般
defaults write -g AppleInterfaceStyle -string "Dark"                                                                    #外観モード
defaults write -g AppleAccentColor -int 4                                                                               #アクセントカラー
defaults write -g AppleHighlightColor -string "0.698039 0.843137 1.000000 Blue"                                         #強調表示色
defaults write -g NSTableViewDefaultSizeMode -int 2                                                                     #サイドバーのアイコンサイズ
defaults write -g AppleReduceDesktopTinting -int 0                                                                      #ウインドウで壁紙の色合い調整を許可
defaults write -g AppleShowScrollBars -string "Automatic"                                                               #スクロールバーの表示
defaults write -g AppleScrollerPagingBehavior -int 1                                                                    #スクロールバーのクリック時
defaults write -g AppleWindowTabbingMode -string "fullscreen"                                                           #書類をタブで開く場合を指定
defaults write -g NSCloseAlwaysConfirmsChanges -int 1
defaults write -g NSQuitAlwaysKeepsWindows -int 0
#デスクトップとスクリーンセーバ（自身で設定）
#Dockとメニューバー
	#Dock
defaults write com.apple.dock tilesize -int 64                                                                          #アイコンサイズ       
defaults write com.apple.dock magnification -bool false                                                                 #マウスポインタを近づけた時の拡大の有無
defaults write com.apple.dock largesize -int 70                                                                         #マウスポインタを近づけた時のアイコンサイズ
defaults write com.apple.dock orientation -string "down"                                                                #ドックの位置
defaults write com.apple.dock mineffect -string "scale"                                                                 #ウィンドウをしまう時のエフェクト
defaults write -g AppleActionOnDoubleClick -string "Maximize"                                                           #ウィンドウのタイトルバーのダブルクリック
defaults write com.apple.dock minimize-to-application -bool true                                                        #ウィンドウをアプリケーションアイコンにしまう
defaults write com.apple.dock launchanim -bool false                                                                    #起動中のアプリケーションをアニメーションで表示
defaults write com.apple.dock autohide -bool true                                                                       #Dockを自動的に表示/非表示
defaults write com.apple.dock show-process-indicators -bool true                                                        #起動済みのアプリケーションにインジケータを表示
defaults write com.apple.dock show-recents -bool false                                                                  #最近使ったアプリケーションをDockに表示
	#メニューバー
defaults write -g _HIHideMenuBar -int 0                                                                                 #デスクトップにメニューバーを自動的に表示/非表示
defaults write -g AppleMenuBarVisibleInFullscreen -int 0                                                                #フルスクリーンでメニューバーを自動的に表示/非表示
defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm:ss"                              #日付と時刻のフォーマット（24時間表示、秒表示あり、日付・曜日を表示）
	#コントロールセンター（自身で設定）
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist WiFi -int 18                                  #Wi-Fi メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Bluetooth -int 18                             #Bluetooth メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible Airdrop" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Airdrop -int 8                                #AirDrop メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible FocusModes" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist FocusModes -int 2                             #集中モード メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist KeyboardBrightness -int 8                     #キーボードの輝度 メニューバーに表示
defaults write com.apple.airplay showInMenuBarIfPresent -bool false
defaults write com.apple.airplay "NSStatusItem Visible com.apple.menuextra.airplay" -bool false                         #画面ミラーリング メニューバーに表示

defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Sound -int 24                                 #サウンド メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist NowPlaying -int 24                            #再生中 メニューバーに表示
	#その他のモジュール
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Battery -int 18                               #バッテリー メニューバーに表示

defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true              #バッテリー 割合（％）を表示
defaults write com.apple.Siri StatusMenuVisible -bool true                                                              #siri メニューバーに表示
#Mission Control
defaults write com.apple.dock mru-spaces -bool false                                                                    #最新の使用状況に基づいて操作スペースを自動的に並べ替える
defaults write .GlobalPreferences AppleSpacesSwitchOnActivate -bool true                                                #アプリケーションの切り替えで、アプリケーションのウィンドウが開いている操作スペースに移動
defaults write com.apple.dock expose-group-apps -bool false                                                             #ウインドウをアプリケーションごとにグループ化
defaults write com.apple.spaces spans-displays -bool true                                                               #ウインドウごとに個別の操作スペース
	#キーボードとマウスのショートカット（自身で設定）
#Siri（自身で設定）
defaults write com.apple.assistant.support.plist "Assistant Enabled" -bool false                                        #"Hey Siri"を聞き取る
#Spotlight（自身で設定）
#言語と地域（自身で設定）
defaults write .GlobalPreferences AppleLanguages -array en ja                                                           #優先する言語
defaults write .GlobalPreferences AppleLocale -string "en-JP"                                                           #地域
defaults write .GlobalPreferences AppleTemperatureUnit -string "Celsius"                                                #温度
defaults write .GlobalPreferences AppleMetricUnits -int 1                                                               #測定単位
defaults write .GlobalPreferences AppleFirstWeekday -dict gregorian 1                                                   #週の始まりの曜日
#通知と集中モード（自身で設定）
#インターネットアカウント（自身で設定）
#パスワード（自身で設定）
#ウォレットとApple Pay（自身で設定）
#ユーザとグループ（自身で設定）
#アクセシビリティ（自身で設定）
#スクリーンタイム（自身で設定）
#拡張機能（自身で設定）
#セキュリティとプライバシー（自身で設定）
#ソフトウェアアップデート
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 0
#ネットワーク（自身で設定）
#Bluetooth（自身で設定）
#サウンド（自身で設定）
#Touch ID（自身で設定）
#キーボード（自身で設定）
#トラックパット（自身で設定）
defaults write -g com.apple.trackpad.forceClick -int 1
defaults write -g ContextMenuGesture -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -int 1
#マウス（自身で設定）
#ディスプレイ（自身で設定）
#プリンタとスキャナ（自身で設定）
#バッテリー（自身で設定）
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Battery -int 18                               #メニューバーにバッテリー状況を表示
#日付と時刻（自身で設定）
#共有（自身で設定）
#Time Machine（自身で設定）
sudo tmutil disable                                                                                                     #バックアップを自動生成

#起動ディスク（自身で設定）

#設定画面にない設定
	#スクリーンショット設定
defaults write com.apple.screencapture location ~/Pictures                                                              #保存場所を変更

#finder設定
defaults write NSGlobalDomain AppleShowAllExtensions -bool true                                                         #全ての拡張子のファイルを表示する
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -boolean true                                          #保存ダイアログを詳細設定で表示
defaults write com.apple.finder _FXSortFoldersFirst -bool true                                                          #名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder AnimateWindowZoom -bool true                                                            #フォルダを開くときのアニメーション
defaults write com.apple.finder _FXShowPosixPathInTitle -bool false                                                     #Finderのタイトルバーにフルパスを表示する
defaults write com.apple.finder AppleShowAllFiles false                                                                 #隠しファイルの表示
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false                                              #拡張子変更時の警告を無効化する
defaults write com.apple.finder ShowPathbar -bool true                                                                  #パスバーを表示する
defaults write com.apple.finder ShowTabView -bool true                                                                  #タブバーを表示する
defaults write com.apple.finder ShowStatusBar -bool false                                                               #ステータスバーを表示する
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"                                                     #検索時にデフォルトでカレントディレクトリを検索する
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true                                            #ネットワークストレージに .DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true                                                #USBに .DS_Storeファイルを作成しない
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


killall Dock
killall SystemUIServer
killall ControlCenter
killall Finder
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
