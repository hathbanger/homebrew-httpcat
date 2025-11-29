class Httpcat < Formula
  desc "CLI tool for interacting with httpcat agent - create, buy, and sell tokens with x402 payments"
  homepage "https://github.com/hathbanger/httpcat-cli"
  url "https://registry.npmjs.org/httpcat-cli/-/httpcat-cli-0.0.20.tgz"
  sha256 "c5e48dd58e0538d3f6f298107abf9e15bce01369d6dcd6e1ec63d80818bd836f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.0.20", shell_output("#{bin}/httpcat --version")
  end
end
