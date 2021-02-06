class ResetLaunchpad < Formula
  desc "Shell script to reset the Launchpad layout in macOS"
  homepage "https://github.com/rinrinrin4046/reset-launchpad"
  url "https://github.com/rinrinrin4046/reset-launchpad/archive/v0.1.tar.gz"
  sha256 "f4150a438dbd3807664b1030398a4b560fe1a6331d9b59e5fe808ea2929cd2a0"
  license "MIT"

  def install
    bin.install "reset-lp"
  end

  test do
    system "false"
  end
end
