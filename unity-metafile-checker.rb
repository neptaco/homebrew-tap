# frozen_string_literal: true

class UnityMetafileChecker < Formula
    desc "Check missing unity meta files"
    homepage "https://github.com/neptaco/unity-metafile-checker"
    version "0.1.0"
    license "MIT"
  
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/neptaco/unity-metafile-checker/releases/download/#{version}/unity-metafile-checker-macos-#{version}.tar.gz"
      sha256 "a3d0b94760f7d265d2b5b9f3b0aa9d6e9728eac05ce3de55dacd073260686780"
    elsif OS.linux?
      url "https://github.com/neptaco/unity-metafile-checker/releases/download/#{version}/unity-metafile-checker-linux-#{version}.tar.gz"
      sha256 "6f31b65b1c892729b194d285bc1429895db5cf60447de440a4d0bdfdcdcba739"
    end
  
    def install
      bin.install "unity-metafile-checker"
    end
  
    test do
      system "#{bin}/unity-metafile-checker", "--version"
    end
  end
  