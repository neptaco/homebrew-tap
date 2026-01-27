# frozen_string_literal: true

class Mcproc < Formula
  desc "Model Context Protocol server for AI agent process management"
  homepage "https://github.com/neptaco/mcproc"
  version "0.1.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d946a9d05bdb2a91def550da54a3653a8d4fdaf3501624813461607bd6d2df92"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2235e8225437c1e32bc835378e75bb19a7c8d165fb3e59c29f34bb9531889598"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6854a78f1128658d497016254eb59891ada6f25d3f88b3af88fffae5cb9915e0"
    else
      url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "760ded9b18d2503cb6a1e79f7a4cfb47b23f6c4b32c2c1a18bdba398ca5edc0d"
    end
  end

  def install
    bin.install "mcproc"
  end

  test do
    system "#{bin}/mcproc", "--version"
  end
end
