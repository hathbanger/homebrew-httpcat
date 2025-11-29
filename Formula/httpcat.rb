class Httpcat < Formula
  desc "CLI tool for interacting with httpcat agent - create, buy, and sell tokens with x402 payments"
  homepage "https://github.com/hathbanger/httpcat-cli"
  url "https://registry.npmjs.org/httpcat-cli/-/httpcat-cli-0.0.21.tgz"
  sha256 "ae2c316c466df93cdc6f5a21729b4b2b68473df15f08e02a97ab6e917fae190d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.0.21", shell_output("#{bin}/httpcat --version")
  end
end
