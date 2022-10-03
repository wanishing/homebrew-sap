class Sap{{at}} < Formula
  desc "kubectl wrapper for spark applications"
  homepage ""
  license "MIT"
  version "{{version}}"

  if OS.linux?
    url "{{linux-url}}"
    sha256 "{{linux-sha}}"
  else
    url "{{mac-url}}"
    sha256 "{{mac-sha}}"
  end

  def install
    bin.install "sap"
  end

  test do
    %x[sap --help]
  end
end
