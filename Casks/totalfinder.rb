cask "totalfinder" do
  if MacOS.version <= :yosemite
    version "1.9.3"
    sha256 "cde59340d0bfcbca36208a1b0ea0d811cf54355b42220214586477514039b2e2"
  elsif MacOS.version <= :mojave
    version "1.12.3"
    sha256 "5c9e580d5d536b3976b5ae1cce1a412f0ee06b6a6405a0c53f8052e8adf0a2d5"
  else
    version "1.13.9"
    sha256 "06a3fdcdce72412c837a5dcfddb1a07e0cc4f7e11d3d9f57ec56a654bd64621a"
  end

  url "https://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  name "TotalFinder"
  homepage "https://totalfinder.binaryage.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  pkg "TotalFinder.pkg"

  uninstall pkgutil: "com.binaryage.pkg.totalfinder.app",
            script:  {
              executable: "TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller",
              args:       ["--headless"],
              sudo:       true,
            }
end
