#アプリの削除
$preinstallapps = @(
  #ゲーム
  "king.com.CandyCrushFriends"
  "king.com.FarmHeroesSaga"
  "Microsoft.MicrosoftSolitaireCollection"
  #Officeを始めよう＆OneNote
  "Microsoft.MicrosoftOfficeHub"            #offce
  "Microsoft.Office.OneNote"                #OneNote
  "Microsoft.People"                        #People
  "Microsoft.SkypeApp"                      #Skype
  "SpotifyAB.SpotifyMusic"                  #Spotify
  #Xbox関連
  "Microsoft.XboxGamingOverlay"             #
  "Microsoft.Xbox.TCUI"                     #
  "Microsoft.XboxApp"                       #
  "Microsoft.XboxGameOverlay"               #
  "Microsoft.XboxIdentityProvider"          #
  "Microsoft.XboxSpeechToTextOverlay"       #
  #その他
  "Microsoft.549981C3F5F10"                 #コルタナ
  "Microsoft.ZuneMusic"                     #Grooveミュージック
  "Microsoft.MixedReality.Portal"           #Mixed Realityポータル
  #"Microsoft.WindowsAlarms"                #あらーむ＆クロック
  "Microsoft.ZuneVideo"                     #映画＆テレビ
  #"Microsoft.WindowsCamera"                #カメラ
  #"Microsoft.YourPhone"                    #スマホ同期
  #"Microsoft.BingWeather"                  #天気
  "Microsoft.GetHelp"                       #問い合わせ
  "Microsoft.Getstarted"                    #ヒント
  "Microsoft.Getstarted"                    #フィードバックHub
  "Microsoft.MicrosoftStickyNotes"          #付箋
  #"Microsoft.WindowsMaps"                  #マップ
  #"microsoft.windowscommunicationsapps"    #メール、カレンダー
  #"Microsoft.Messaging"                    #メッセージング
  #"Microsoft.OneConnect"                   #モバイル通信プラン
)

foreach ($elem in $preinstallapps) {
  Get-AppxPackage $elem | Remove-AppxPackage
}

#アプリのインストール
$windowsapps = @(
  #ブラウザ
  "Google Chrome"
  "Brave"
  "Mozilla Firefox"
  "Google Chrome Dev"
  "Brave Beta"
  "Microsoft Edge Dev"
  "Firefox Developer Edition"
  #クラウド
  "Google Drive"
  "iCloud"
  "Dropbox"
  "Box.Box"
  #資料作成
  "Adobe Acrobat DC (64-bit)"
  #開発
  "Microsoft Visual Studio Code"
  "GitHub Desktop"
  "Microsoft.PowerShell"
  "Android Studio"
  "Docker Desktop"
  "Figma.Figma"
  #コミュニケーションツール
  "Microsoft Teams"
  "Zoom"
  "Messenger"
  "SlackTechnologies.Slack"
)
foreach ($elem in $windowsapps) {
  winget install -e $elem
}
