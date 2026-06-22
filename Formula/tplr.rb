class Tplr < Formula
  desc "Replace secret placeholders in configuration files"
  homepage "https://github.com/dmoove/tplr"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.0/tplr-darwin-arm64.tar.gz"
      sha256 "31d9326156c4cb8491fc7cc30d3525d5f3fb83dc08c59dfa691b2cc334408a6e"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.0/tplr-darwin-amd64.tar.gz"
      sha256 "e0b89acf94c14c4b70dd8d4d03e73e380eb3002cff2459bf55c61528494cdedf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.0/tplr-linux-arm64.tar.gz"
      sha256 "29242c63dbfeefbec814f8e560d1760b9db68d5a4aeab6ac9a73d2fec82a8096"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.7.0/tplr-linux-amd64.tar.gz"
      sha256 "27d16b5d7c1a8296b8f155fa9a7233051672a5a65135b06b6f89e9ceec9aed8a"
    end
  end

  def install
    bin.install Dir["tplr-*"].first => "tplr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tplr --version")
  end
end
