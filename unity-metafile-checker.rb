# frozen_string_literal: true

class UnityMetafileChecker < Formula
    desc "Check missing unity meta files"
    homepage "https://github.com/neptaco/unity-metafile-checker"
    version "0.1.1"
    license "MIT"
  
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/neptaco/unity-metafile-checker/releases/download/#{version}/unity-metafile-checker-macos-#{version}.tar.gz"
      sha256 "d6ded770d0f84cdf5d16d24a09ba2fe1fe41c1ae9c58f61132b5c25b9a5678f9"
    elsif OS.linux?
      url "https://github.com/neptaco/unity-metafile-checker/releases/download/#{version}/unity-metafile-checker-linux-#{version}.tar.gz"
      sha256 "d1c159f58c87b686edf0d2ad1e0469fdfc61ba4709eca681a13b36855c15fdf9"
    end
  
    def install
      bin.install "unity-metafile-checker"
    end
  
    test do
      system "#{bin}/unity-metafile-checker", "--version"
    end
  end
  