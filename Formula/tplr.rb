class Tplr < Formula
  desc "Replace secret placeholders in configuration files"
  homepage "https://github.com/dmoove/tplr"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.5.0/tplr-darwin-arm64.tar.gz"
      sha256 "21a0b334a4bdd8a267044faace6e2fc048b6a6e763e83ab58d43a13c403045c4"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.5.0/tplr-darwin-amd64.tar.gz"
      sha256 "ec71bb8c07d6caf6dbeb840f4cc957f8cd2ef6aea78d33c6b65f36a4bacebd87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmoove/tplr/releases/download/v0.5.0/tplr-linux-arm64.tar.gz"
      sha256 "44004d36ea46216101957a835fc8902a62843763640d2e75bf708355b66392b8"
    end
    on_intel do
      url "https://github.com/dmoove/tplr/releases/download/v0.5.0/tplr-linux-amd64.tar.gz"
      sha256 "c2ad65c3fdc7f6278eb0adccdc7a28e583f8ba63bc416d2ec61567dcb91d656d"
    end
  end

  def install
    bin.install Dir["tplr-*"].first => "tplr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tplr --version")
  end
end
