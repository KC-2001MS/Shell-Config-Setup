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
#デスクトップとスクリーンセーバ（一部自身で設定）
	#ホットコーナー
#defaults write com.apple.dock wvous-tl-corner -int 9 
#defaults write com.apple.dock wvous-tl-modifier -int 0                                                                 #左上
#defaults write com.apple.dock wvous-bl-corner -int 4
#defaults write com.apple.dock wvous-bl-modifier -int 0                                                                 #左下
#defaults write com.apple.dock wvous-tr-corner -int 11
#defaults write com.apple.dock wvous-tr-modifier -int 0                                                                 #右上
#defaults write com.apple.dock wvous-br-corner -int 14 
#defaults write com.apple.dock wvous-br-modifier -int 0                                                                 #右下
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
	#コントロールセンター
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
defaults write com.apple.controlcenter "NSStatusItem Visible Display" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Display -int 2                                #ディスプレイ メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Sound -int 24                                 #サウンド メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist NowPlaying -int 24                            #再生中 メニューバーに表示
	#その他のモジュール
defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist AccessibilityShortcuts -int 8                 #アクセシビリティのショートカット メニューバーに表示
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Battery -int 18                               #バッテリー メニューバーに表示
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true              #バッテリー 割合（％）を表示
defaults write com.apple.controlcenter "NSStatusItem Visible UserSwitcher" -bool false
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist UserSwitcher -int 24                          #ファストユーザースイッチ メニューバーに表示
	#メニューバーのみ
defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true                                                       #時計 曜日を表示
defaults write com.apple.menuextra.clock ShowDayOfMonth -bool true                                                      #時計 日付を表示
defaults write com.apple.menuextra.clock IsAnalog -bool false                                                           #時計 デジタル・アナログ
defaults write com.apple.menuextra.clock Show24Hour -bool true                                                          #時計 24時間表示にする
defaults write com.apple.menuextra.clock ShowAMPM -bool false                                                           #時計 午前/午後を表示
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false                                                #時計 時刻内の":"を点滅させる
defaults write com.apple.menuextra.clock ShowSeconds -bool true                                                         #時計 秒を表示
defaults write com.apple.Spotlight "NSStatusItem Visible Item-0" -bool true
defaults -currentHost write com.apple.Spotlight MenuItemHidden -int 0                                                   #Spotlight メニューバーに表示
defaults write com.apple.Siri StatusMenuVisible -bool true                                                              #Siri メニューバーに表示
	#メニューバーのみ（自身で設定）
defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true                                                       #時計 曜日を表示
defaults write com.apple.menuextra.clock ShowDayOfMonth -bool true                                                      #時計 日付を表示
defaults write com.apple.menuextra.clock IsAnalog -bool false                                                           #時計 デジタル・アナログ
defaults write com.apple.menuextra.clock Show24Hour -bool true                                                          #時計 24時間表示にする
defaults write com.apple.menuextra.clock ShowAMPM -bool false                                                           #時計 午前/午後を表示
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false                                                #時計 時刻内の":"を点滅させる
defaults write com.apple.menuextra.clock ShowSeconds -bool true                                                         #時計 秒を表示
defaults write com.apple.Spotlight "NSStatusItem Visible Item-0" -bool true
defaults -currentHost write com.apple.Spotlight MenuItemHidden -int 0                                                   #Spotlight メニューバーに表示
defaults write com.apple.Siri StatusMenuVisible -bool true                                                              #Siri メニューバーに表示
#Mission Control
defaults write com.apple.dock mru-spaces -bool false                                                                    #最新の使用状況に基づいて操作スペースを自動的に並べ替える
defaults write .GlobalPreferences AppleSpacesSwitchOnActivate -bool true                                                #アプリケーションの切り替えで、アプリケーションのウィンドウが開いている操作スペースに移動
defaults write com.apple.dock expose-group-apps -bool false                                                             #ウインドウをアプリケーションごとにグループ化
defaults write com.apple.spaces spans-displays -bool true                                                               #ウインドウごとに個別の操作スペース
	#キーボードとマウスのショートカット（自身で設定）
	#ホットコーナー
defaults write com.apple.dock wvous-tl-corner -int 9 
defaults write com.apple.dock wvous-tl-modifier -int 0                                                                  #左上
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0                                                                  #左下
defaults write com.apple.dock wvous-tr-corner -int 11
defaults write com.apple.dock wvous-tr-modifier -int 0                                                                  #右上
defaults write com.apple.dock wvous-br-corner -int 14 
defaults write com.apple.dock wvous-br-modifier -int 0                                                                  #右下
#Siri（自身で設定）
defaults write com.apple.assistant.support.plist "Assistant Enabled" -bool false                                        #"Siriに頼む"を有効にする
defaults write com.apple.Siri VoiceTriggerUserEnabled -int 0                                                            #"Hey Siri"を聞き取る
defaults write com.apple.Siri HotkeyTag -int 2                                                                          #ショートカット
defaults write com.apple.assistant.backedup "Session Language" -string "ja-JP"                                          #言語
defaults write com.apple.assistant.backedup "Use device speaker for TTS" -int 3                                         #音声フィードバック
#defaults write com.apple.Siri StatusMenuVisible -bool true                                                             #メニューバーにSiriを表示
#Spotlight
defaults write com.apple.spotlight orderedItems -array \
    '{"enabled" = 1; "name" = "APPLICATIONS";}' \
    '{"enabled" = 1; "name" = "SOURCE";}' \
    '{"enabled" = 1; "name" = "SYSTEM_PREFS";}' \
    '{"enabled" = 1; "name" = "BOOKMARKS";}' \
    '{"enabled" = 1; "name" = "CONTACT";}' \
    '{"enabled" = 1; "name" = "DIRECTORIES";}' \
    '{"enabled" = 1; "name" = "DOCUMENTS";}' \
    '{"enabled" = 1; "name" = "EVENT_TODO";}' \
    '{"enabled" = 1; "name" = "FONTS";}' \
    '{"enabled" = 1; "name" = "IMAGES";}' \
    '{"enabled" = 1; "name" = "MENU_CONVERSION";}' \
    '{"enabled" = 1; "name" = "MENU_DEFINITION";}' \
    '{"enabled" = 1; "name" = "MENU_EXPRESSION";}' \
    '{"enabled" = 1; "name" = "MENU_OTHER";}' \
    '{"enabled" = 1; "name" = "MENU_SPOTLIGHT_SUGGESTIONS";}' \
    '{"enabled" = 1; "name" = "MESSAGES";}' \
    '{"enabled" = 1; "name" = "MOVIES";}' \
    '{"enabled" = 1; "name" = "MUSIC";}' \
    '{"enabled" = 1; "name" = "PDF";}' \
    '{"enabled" = 1; "name" = "PRESENTATIONS";}' \
    '{"enabled" = 1; "name" = "SPREADSHEETS";}'
#言語と地域（自身で設定）
defaults write .GlobalPreferences AppleLanguages -array en ja                                                           #優先する言語
defaults write .GlobalPreferences AppleMetricUnits -int 1
defaults write .GlobalPreferences AppleLocale -string "en-JP"
defaults write .GlobalPreferences AppleMeasurementUnits -string "Centimeters"                                           #地域
defaults delete .GlobalPreferences AppleICUForce12HourTime                                                              #時刻の書式
defaults write .GlobalPreferences AppleTemperatureUnit -string "Celsius"                                                #温度

defaults write .GlobalPreferences AppleFirstWeekday -dict gregorian 1                                                   #週の始まりの曜日
defaults write .GlobalPreferences AppleCollationOrder -string "ja"                                                      #リストの表示順序
#通知と集中モード（自身で設定）
defaults -currentHost write com.apple.notificationcenterui dndEnabledDisplaySleep -bool false                           #ディズプレイがスリープ中
defaults -currentHost write com.apple.notificationcenterui dndMirroring -bool false                                     #ディスプレイをミラーリング中または共有中
#インターネットアカウント＆パスワード＆ウォレットとApple Pay＆ユーザとグループ（自身で設定）
#アクセシビリティ（自身で設定）
#defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" -bool false
#defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist AccessibilityShortcuts -int 8                #メニューバーにアクセシビリティの状況を表示
#スクリーンタイム（自身で設定）
#拡張機能（自身で設定）
#セキュリティとプライバシー
	#一般
defaults write com.apple.screensaver askForPassword -bool true                                                          #スリープとスクリーンセーバの解除後にパスワードを要求
defaults write com.apple.screensaver askForPasswordDelay -int 0                                                         #開始後
sudo defaults delete /Library/Preferences/com.apple.loginwindow LoginwindowText                                         #画面がロックされているときにメッセージを表示
	#ファイアウォール
sudo defaults delete /Library/Preferences/com.apple.alf globalstate                                                     #ファイアウォール:
#ソフトウェアアップデート
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 0
#ネットワーク
#defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool true
#defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist WiFi -int 18                                 #メニューバーにWi-Fiの状況を表示
#Bluetooth
#defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true
#defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Bluetooth -int 18                            #メニューバーにBluetoothを表示
#サウンド
#defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool false
#defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Sound -int 24                                #メニューバーにサウンドを表示
#Touch ID（自身で設定）
#キーボード
	#キーボード
defaults write -g KeyRepeat -int 2                                                                                      #キーのリピート
defaults write -g InitialKeyRepeat -int 25                                                                              #リピート入力認識までの時間
defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor.plist "Automatic Keyboard Enabled" -boolean true #環境光が暗い場合にキーボードの輝度を調整
defaults write com.apple.keyboard.fnState -boolean true                                                                 #F1、F2 などのすべてのキーを標準のファンクションキーとして使用
	#ユーザ辞書
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool true
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool true                                        #英字入力中にスペルを自動変換
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false                                              #文頭を自動的に大文字にする
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false                                          #スペースバーを2回押してピリオドを入力
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool true                                               #Touch Barに入力候補を表示
defaults write -g NSSpellCheckerAutomaticallyIdentifiesLanguages -int 1                                                 #スペルチェック
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool true                                             #スマート引用符とスマートダッシュを使用
	#ショートカット
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2                                                                #コントロール間のフォーカス移動をキーボードで操作
	#入力ソース
defalts write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/TextInput.menu"      #メニューバーに入力メニューを表示
defaults write com.apple.HIToolbox AppleGlobalTextInputProperties -dict TextInputGlobalPropertyPerContextInput false    #書類ごとに入力ソースを自動的に切り替える
	#音声入力
defaults write com.apple.assistant.support "Dictation Enabled" -bool true                                               #音声入力
#トラックパット
	#ポイントとクリック
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2                  #調べる＆データ検出
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -boolean false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -boolean false                     #副ボタンのクリック
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 0                                       #タップでクリック
defaults write -g com.apple.trackpad.scaling -float 0.6875                                                              #軌跡の速さ
	#スクロールとズーム
defaults write -g com.apple.trackpad.scaling -boolean true                                                              #スクロールの方向
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -boolean true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -boolean true                           #拡大／縮小
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -boolean true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -boolean true       #スマートズーム
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -boolean true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -boolean true                          #回転
	#その他のジェスチャ
defaults write -g AppleEnableSwipeNavigateWithScrolls -boolean true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0            #ページ間をスワイプ
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 2           #フルスクリーンアプリケーション間をスワイプ
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3     #通知センター
defaults write com.apple.AppleMultitouchTrackpad  TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.applemultitouchtrackpad  Trackpadthreefingervertswipegesture -int 2
defaults write com.apple.dock  showMissionControlGestureEnabled -boolean true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadThreeFingerVertSwipeGesture -int 2           #Mission Control
defaults write com.apple.AppleMultitouchTrackpad  TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad  TrackpadThreeFingerVertSwipeGesture -int 2
defaults write com.apple.dock  showAppExposeGestureEnabled -boolean true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadThreeFingerVertSwipeGesture -int 2           #アプリケーション Expose
defaults write com.apple.dock showLaunchpadGestureEnabled -boolean true                                                 #Launchpad
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture = 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture = 2
defaults write com.apple.dock showDesktopGestureEnabled = 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture = 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture = 2                    #デスクトップを表示
#マウス
	#ポイントとクリック
defaults write -g com.apple.swipescrolldirection -boolean false                                                         #スクロールの方向: ナチュラル
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string "TwoButton"
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse "save.MouseButtonMode.v1" -int 1                         #副ボタンのクリック
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseOneFingerDoubleTapGesture -int 1                    #スマートズーム
defaults write -g com.apple.mouse.scaling -int 3                                                                        #軌跡の速さ
	#その他のジェスチャ
defaults write -g AppleEnableMouseSwipeNavigateWithScrolls -boolean "true"
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseTwoFingerHorizSwipeGesture -int 0                   #ページ間をスワイプ
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseTwoFingerHorizSwipeGesture -int 2                   #フルスクリーンアプリケーション間をスワイプ
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseTwoFingerDoubleTapGesture -int 3                    #Mission Control
#ディスプレイ（自身で設定）
#プリンタとスキャナ（自身で設定）
defaults write org.cups.PrintingPrefs UseLastPrinter -bool true                                                         #デフォルトのプリンタ
sudo defaults write /Library/Preferences/org.cups.PrintingPrefs DefaultPaperID iso-a4                                   #デフォルトの用紙サイズ
#バッテリー（自身で設定）
sudo pmset -b displaysleep 15                                                                                           #ディスプレイをオフにする
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Battery -int 18                               #メニューバーにバッテリー状況を表示
#日付と時刻＆共有（自身で設定）
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
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
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
