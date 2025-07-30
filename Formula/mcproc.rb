# frozen_string_literal: true

class Mcproc < Formula
  desc "Model Context Protocol server for AI agent process management"
  homepage "https://github.com/neptaco/mcproc"
  version "0.1.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2455db2171a9cf5af87c68ffb1fe2321ca0a66e7797e5f78fd1ecc2f5e8da679"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c89edc3fff1c8ff1e5e479e187ac83e4f6c479886c4cb419bc3589a559394e03"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f01d3d83b5c31369e1ad57c5fd2b11ee008c6e0aa52c91c3980e9d0b31a089d5"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09e9f2ffa8f219f2d5850e21dd0c4aa32025857b2a3432c74a86bea9aa75b197"
    end
  end

  def install
    bin.install "mcproc"
  end

  test do
    system "#{bin}/mcproc", "--version"
  end
end
