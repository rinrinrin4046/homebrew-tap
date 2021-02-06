cask "ampero-editor" do
  version :latest
  sha256 :no_check

  url "https://hotoneaudio.oss-cn-shenzhen.aliyuncs.com/prod/support/Ampero%20Editor%20Setup%20V1.2.8%20for%20Mac.1590663730372.zip",
      verified: "hotoneaudio.oss-cn-shenzhen.aliyuncs.com"
  name "Ampero Editor"
  homepage "https://www.hotoneaudio.com/products/multi-effects/ampero"

  pkg "Ampero Editor Setup V1.2.8 for Mac/Ampero Editor Setup V1.2.8 for Mac.pkg"

  uninstall pkgutil: [
    "com.hotoneaudio.AmperoEditorI",
    "com.hotoneaudio.AmperoEditor",
  ]
end
