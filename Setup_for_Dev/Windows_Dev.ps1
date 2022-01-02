#アプリの削除
$preinstallapps = @(
  #ゲーム
  "king.com.CandyCrushFriends"              #Candy Crush Friends
  "king.com.FarmHeroesSaga"                 #Farm Heroes Saga
  "Microsoft.MicrosoftSolitaireCollection"  #Solitaire Collection
  #Officeを始めよう＆OneNote
  "Microsoft.MicrosoftOfficeHub"            #offce
  "Microsoft.Office.OneNote"                #OneNote
  "Microsoft.People"                        #People
  "Microsoft.SkypeApp"                      #Skype
  "SpotifyAB.SpotifyMusic"                  #Spotify
  #Xbox関連
  "Microsoft.XboxGamingOverlay"             #Xboxゲームバー
  "Microsoft.Xbox.TCUI"                     #Xbox Live
  "Microsoft.XboxApp"                       #Xbox 本体コンバニオン
  "Microsoft.XboxGameOverlay"               #xbox Game Overlay
  "Microsoft.XboxIdentityProvider"          #Xbox Identity Provider
  "Microsoft.XboxSpeechToTextOverlay"       #Xbox Speech To Text Overlay
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
  "Google Chrome"                   #Chrome
  "Brave"                           #Brave
  "Mozilla Firefox"                 #Firefox
  "Google Chrome Dev"               #Chrome Dev
  "Brave Beta"                      #Brave Beta
  "Microsoft Edge Dev"              #Edge Dev
  "Firefox Developer Edition"       #Firefox Dev
  #クラウド
  "Google Drive"                    #Google Drive
  "iCloud"                          #iCloud
  "Dropbox"                         #Dropbox
  "Box.Box"                         #Box
  #資料作成
  "Adobe Acrobat DC (64-bit)"       #Adobe Acrobat DC
  #開発
  "Microsoft Visual Studio Code"    #Visual Studio Code
  "GitHub Desktop"                  #GitHub Desktop
  "Microsoft.PowerShell"            #PowerShell
  "Android Studio"                  #Android Studio
  "Docker Desktop"                  #Docker Desktop
  "Figma.Figma"                     #Figma
  #コミュニケーションツール
  "Microsoft Teams"                 #Teams
  "Zoom"                            #Zoom
  "Messenger"                       #Messenger
  "SlackTechnologies.Slack"         #SlackTechnologies.Slack
)
foreach ($elem in $windowsapps) {
  winget install -e $elem
}
