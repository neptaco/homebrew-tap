# frozen_string_literal: true

class Mcproc < Formula
  desc "Model Context Protocol server for AI agent process management"
  homepage "https://github.com/neptaco/mcproc"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4bf2c1475ac03dacb1bdb0566f4b1563f7bd065257ef94e2b9285dab845c359b"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e8c135f0a313b9d4199ae0d520e2b663ea5c82feecca9a95bec1a1366ebe470e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1901daa7d71990bc2294c009922b2b9ceef3215653c2f7600c5f9935c696e6ee"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a156e3bd7092e100d24fc8d87c7fb304fb8201df1920c1a95fedf5f865f4454"
    end
  end

  def install
    bin.install "mcproc"
  end

  test do
    system "#{bin}/mcproc", "--version"
  end
end
