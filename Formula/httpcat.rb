class Httpcat < Formula
  desc "CLI tool for interacting with httpcat agent - create, buy, and sell tokens with x402 payments"
  homepage "https://github.com/hathbanger/httpcat-cli"
  url "https://registry.npmjs.org/httpcat-cli/-/httpcat-cli-0.0.2.tgz"
  sha256 "16780de5cfd87d9f06a661254877dcb3c5490d21fccd6bff3df58b2c74db33db"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.0.2", shell_output("#{bin}/httpcat --version")
  end
end
