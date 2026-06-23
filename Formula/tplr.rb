class Tplr < Formula
  desc "Replace secret placeholders in configuration files"
  homepage "https://github.com/dmoove/tplr"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.1/tplr-darwin-arm64.tar.gz"
      sha256 "29c92da51d4669d552b363757d3b1cc1776f7a6caf8dfdf66ad800c0ce00ef63"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.1/tplr-darwin-amd64.tar.gz"
      sha256 "a112fa5a8cbae4e890e9e4e20dc54b26a220fb68b484986db306e0c36157db18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.1/tplr-linux-arm64.tar.gz"
      sha256 "b17c8f168e0c133c96aaf369c330d6bccad790d2d502ede72dab0e97235f94b5"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.1/tplr-linux-amd64.tar.gz"
      sha256 "9732c0f0c076cf929f92cc9cd50d268fafd0716720aef77783ae065f087d4633"
    end
  end

  def install
    bin.install Dir["tplr-*"].first => "tplr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tplr --version")
  end
end
