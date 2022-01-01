#アプリの削除
$preinstallapps = @(
  #ゲーム
  "king.com.CandyCrushFriends"
  "king.com.FarmHeroesSaga"
  "Microsoft.MicrosoftSolitaireCollection"
  #コルタナ
  "Microsoft.549981C3F5F10"
  #Grooveミュージック
  "Microsoft.ZuneMusic"
  #Mixed Realityポータル
  "Microsoft.MixedReality.Portal"
  #Officeを始めよう＆OneNote
  "Microsoft.MicrosoftOfficeHub"
  "Microsoft.Office.OneNote"
  #People
  "Microsoft.People"
  #Skype
  "Microsoft.SkypeApp"
  #Spotify
  "SpotifyAB.SpotifyMusic"
  #Xbox関連
  "Microsoft.XboxGamingOverlay"
  "Microsoft.Xbox.TCUI"
  "Microsoft.XboxApp"
  "Microsoft.XboxGameOverlay"
  "Microsoft.XboxIdentityProvider"
  "Microsoft.XboxSpeechToTextOverlay"
  #あらーむ＆クロック
  #"Microsoft.WindowsAlarms"
  #映画＆テレビ
  "Microsoft.ZuneVideo"
  #カメラ
  #"Microsoft.WindowsCamera"
  #スマホ同期
  #"Microsoft.YourPhone"
  #天気
  #"Microsoft.BingWeather"
  #問い合わせ
  "Microsoft.GetHelp"
  #ヒント
  "Microsoft.Getstarted"
  #フィードバックHub
  "Microsoft.Getstarted"
  #付箋
  "Microsoft.MicrosoftStickyNotes"
  #マップ
  #"Microsoft.WindowsMaps"
  #メール、カレンダー
  #"microsoft.windowscommunicationsapps"
  #メッセージング
  #"Microsoft.Messaging"
  #モバイル通信プラン
  #"Microsoft.OneConnect"
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
)
foreach ($elem in $windowsapps) {
  winget install -e $elem
}
