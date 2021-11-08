class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  url "https://github.com/wanishing/sap/releases/download/v0.0.3/sap-0.0.3-macos.tar.gz"
  sha256 "7b7e90d160cdd8baa54bf7fb30e5c1d288a512854a44757464008fb5a1304436"
  license "MIT"
  version "0.0.3"
  
  depends_on "borkdude/brew/babashka" => :build
  
  def install
    bin.install "sap.clj" => "sap"
  end

  test do
    %x[sap help]
  end
end
