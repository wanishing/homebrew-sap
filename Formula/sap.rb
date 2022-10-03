class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  license "MIT"
  version "1.0.1"

  if OS.linux?
    url "https://github.com/wanishing/sap/releases/download/v1.0.1/sap-1.0.1-ubuntu-22.04.zip"
    sha256 "bca5df2acd487aecd69188989499ce58b267479c23910ae56126b0b69fe37753"
  else
    url "https://github.com/wanishing/sap/releases/download/v1.0.1/sap-1.0.1-macos-11.zip"
    sha256 "ff9acd24d471576fc6bf9ffb32089fa58f5b0003615b02c14a28d6157819aa90"
  end

  def install
    bin.install "sap"
  end

  test do
    %x[sap --help]
  end
end
