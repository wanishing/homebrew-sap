class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  license "MIT"
  version "0.0.5"

  if OS.linux?
    url "https://github.com/wanishing/sap/releases/download/v0.0.5/mal-0.0.5-ubuntu-22.04.zip"
  else
    url "https://github.com/wanishing/sap/releases/download/v0.0.5/mal-0.0.5-macos-11.zip"
  end

  def install
    bin.install "sap"
  end

  test do
    %x[sap help]
  end
end
