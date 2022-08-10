class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  license "MIT"
  version "1.0.0"

  if OS.linux?
    url "https://github.com/wanishing/sap/releases/download/v1.0.0/sap-1.0.0-ubuntu-22.04.zip"
    sha256 "df27b3a15a4460e7fd471fc0860e0e8775253369072797cbc9546f950e7d1000"
  else
    url "https://github.com/wanishing/sap/releases/download/v1.0.0/sap-1.0.0-macos-11.zip"
    sha256 "4b417c2d3db86e32fd7428f40898f4e36342039cbcbc59617c6b97d850a7fe3f"
  end

  def install
    bin.install "sap"
  end

  test do
    %x[sap --help]
  end
end
