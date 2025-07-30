# frozen_string_literal: true

class Mcproc < Formula
  desc "Model Context Protocol server for AI agent process management"
  homepage "https://github.com/neptaco/mcproc"
  version "0.1.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "96f6353db39d6702d34412aef13764e941ab662d40021d06c5b035691c2e2ee3"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "43c4d7677b5679c2c8518261b158c12155d18a2cc66b6f34a571d0f160d0dc98"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a009b5248d8cd1951f99aefd0f320961cf88350495b48b13e8594b38fbb5b7be"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e919b29bdf7f913ff3bed2f1ca740c47d860aa082da60093e4be9fea02dbb179"
    end
  end

  def install
    bin.install "mcproc"
  end

  test do
    system "#{bin}/mcproc", "--version"
  end
end
