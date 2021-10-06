class Sap < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  url "https://github.com/wanishing/sap/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "d0640e0f791dfd0eeb40acd053c624342002caee4e87c569223555c43e333274"
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
