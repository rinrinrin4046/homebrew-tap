cask "setdefaultmailapp" do
  version :latest
  sha256 :no_check

  url "https://download.microsoft.com/download/7/D/5/7D52637E-1E80-4AEF-A63A-0D7B4B7CD626/SetDefaultMailApp.zip"
  name "SetDefaultMailApp"
  homepage "https://docs.microsoft.com/en-us/outlook/troubleshoot/outlook-for-mac/useful-tools#setdefaultmailapp"

  app "SetDefaultMailApp.app"

  zap trash: [
    "~/Library/Preferences/com.microsoft.SetDefaultMailApp.plist",
  ]
end
