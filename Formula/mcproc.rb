# frozen_string_literal: true

class Mcproc < Formula
  desc "Model Context Protocol server for AI agent process management"
  homepage "https://github.com/neptaco/mcproc"
  url "https://github.com/neptaco/mcproc/releases/download/v#{version}/mcproc-#{version}-aarch64-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "26cca84eb8b11573aa8f802ef2fece94e703e7aaa2fd86cc206029b2e18dc8e2"
  license "MIT"

  bottle do
    sha256 arm64_apple: "26cca84eb8b11573aa8f802ef2fece94e703e7aaa2fd86cc206029b2e18dc8e2"
    sha256 x86_64_apple: "22427309a33aaa2a97c85f3d07dfb57019cb1fc277965fdf0c18b53bd5623e09"
    sha256 arm64_linux: "42aef4bba9dc07549bbd37e9ba317bf9c70871013fc07bb09f7ddb0bd56c1d45"
    sha256 x86_64_linux: "c62e37c73ddf4b7afa1ef6db0695d0dc2184eaf0dadb9421a8d43ca5d3c3bf25"
  end

  def install
    bin.install "mcproc"
  end

  test do
    system "#{bin}/mcproc", "--version"
  end
end
