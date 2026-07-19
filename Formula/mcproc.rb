# frozen_string_literal: true

class Mcproc < Formula
  desc "Model Context Protocol server for AI agent process management"
  homepage "https://github.com/neptaco/mcproc"
  version "0.1.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a2493cc83a35de7b17bff330f8809ce418218793c48d3d2b4db21798e540bdaa"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6c186f56d741aa60784e2ee722f2368150fba603e611f9ef198b00ea6b172379"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c508e6540f028d91fa76400570a167908e9c82228ca51633d2a53a4b4514059e"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e37ce715aeffd42aa12116f73c7bb819f8e4c04a169388b9aac0d84cd64f7491"
    end
  end

  def install
    bin.install "mcproc"
  end

  test do
    system "#{bin}/mcproc", "--version"
  end
end
