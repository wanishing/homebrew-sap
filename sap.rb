class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  url "https://github.com/wanishing/sap/releases/download/v0.0.4/sap-0.0.4-macos.tar.gz"
  sha256 "5fff5c607bdcf7c0deabe8863a2c94d41ddf7870df502e4f9d2ebc4aacdea1c4"
  license "MIT"
  version "0.0.4"
  
  depends_on "borkdude/brew/babashka" => :build
  
  def install
    bin.install "script/sap.clj" => "sap"
  end

  test do
    %x[sap help]
  end
end
