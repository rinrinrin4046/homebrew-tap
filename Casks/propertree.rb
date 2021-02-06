cask "propertree" do
  version :latest
  sha256 :no_check

  url "https://github.com/rinrinrin4046/ProperTree-Build/releases/download/nightly/ProperTree.zip"
  name "ProperTree"
  homepage "https://github.com/rinrinrin4046/ProperTree-Build"

  app "ProperTree.app"

  zap trash: [
    "~/Library/Library/Preferences/com.corpnewt.ProperTree.plist",
    "~/Library/Saved Application State/com.corpnewt.ProperTree.savedState",
  ]
end
