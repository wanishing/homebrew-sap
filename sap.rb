class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  url "https://github.com/wanishing/sap/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "6af343365297f480b17baf53d440368187c0125894ae53362e47a733367474dd"
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
