class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  url "https://github.com/wanishing/sap/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "8cfff306d3a212a255ad6a4161785b54ab1e2fb565415943c7a7d82c97b0dc27"
  license "MIT"
  version "0.0.1"

  depends_on "borkdude/brew/babashka" => :build

  def install
    bin.install "sap"
  end

  test do
    %x[sap help]
  end
end
