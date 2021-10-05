class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  url "https://github.com/wanishing/sap/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "8de86a57f4ab4135a10516bd4b2daa841b5fa4f037de04d783f3f3bb66c5afd7"
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
