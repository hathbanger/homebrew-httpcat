class Httpcat < Formula
  desc "CLI tool for interacting with httpcat agent - create, buy, and sell tokens with x402 payments"
  homepage "https://github.com/hathbanger/httpcat-cli"
  url "https://registry.npmjs.org/httpcat-cli/-/httpcat-cli-0.0.14.tgz"
  sha256 "6b8d90d0f8b0335b274b6d90ba15aed1d5d83bfa5ddfc8125fce71a868ddde4f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.0.14", shell_output("#{bin}/httpcat --version")
  end
end
