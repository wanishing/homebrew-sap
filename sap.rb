class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  url "https://github.com/wanishing/sap/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "22088db6210828f4998455938d4b2e6671526b69d981c76b95bcfb05567aef28"
  license "MIT"
  version "0.0.2"

  depends_on "borkdude/brew/babashka" => :build

  def install
    bin.install "sap.clj" => "sap"
  end

  test do
    %x[sap help]
  end
end
