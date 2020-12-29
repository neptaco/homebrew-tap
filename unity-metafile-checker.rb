# frozen_string_literal: true

class UnityMetafileChecker < Formula
    desc "Check missing unity meta files"
    homepage "https://github.com/neptaco/unity-metafile-checker"
    version "0.1.0"
    license "MIT"
  
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/neptaco/unity-metafile-checker/releases/download/#{version}/unity-metafile-checker-macos-#{version}.tar.gz"
      sha256 "2e7c55e9588602e4141805766a3ccced9e67b86049fb8bc0e3c723634990f9b1"
    elsif OS.linux?
      url "https://github.com/neptaco/unity-metafile-checker/releases/download/#{version}/unity-metafile-checker-linux-#{version}.tar.gz"
      sha256 "bce2a68b0d849b2f2e7736d6fec98b25e0a87153786c18eeba5227685c95a75e"
    end
  
    def install
      bin.install "unity-metafile-checker"
    end
  
    test do
      system "#{bin}/unity-metafile-checker", "--version"
    end
  end
  