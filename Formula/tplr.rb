class Tplr < Formula
  desc "Replace secret placeholders in configuration files"
  homepage "https://github.com/dmoove/tplr"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.6.0/tplr-darwin-arm64.tar.gz"
      sha256 "fd0ce34a0872bb73f5c292eba570b9a400e953cff0d5eed3a3481216030e4459"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.6.0/tplr-darwin-amd64.tar.gz"
      sha256 "4a02be86af76b9bfb0a1c4c640c6b99edfb55735b5b2b2c40f29df60e6353d14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.6.0/tplr-linux-arm64.tar.gz"
      sha256 "56e1542b4ec2dfc2923e9978f3d8724e07075b76cad425f4bfd12f81be19ed66"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.6.0/tplr-linux-amd64.tar.gz"
      sha256 "ae51cded50d7396f04fea2e63e5a477665f49becfe6589a66cca8222ca8608c9"
    end
  end

  def install
    bin.install Dir["tplr-*"].first => "tplr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tplr --version")
  end
end
