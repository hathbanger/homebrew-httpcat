class Httpcat < Formula
  desc "CLI tool for interacting with httpcat agent - create, buy, and sell tokens with x402 payments"
  homepage "https://github.com/hathbanger/httpcat-cli"
  url "https://registry.npmjs.org/httpcat-cli/-/httpcat-cli-0.0.1.tgz"
  sha256 "3ef964582f34257728e3960a3dff06a664813d63db5cc121f63279fa4127af23"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.0.1", shell_output("#{bin}/httpcat --version")
  end
end
