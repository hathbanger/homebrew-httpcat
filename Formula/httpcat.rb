class Httpcat < Formula
  desc "CLI tool for interacting with httpcat agent - create, buy, and sell tokens with x402 payments"
  homepage "https://github.com/hathbanger/httpcat-cli"
  url "https://registry.npmjs.org/httpcat-cli/-/httpcat-cli-0.0.15.tgz"
  sha256 "7a420c1c68e03ee8d9e6f9c8fcce90ef25d83b6abd347c9a9d1e894e77e2fd17"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.0.15", shell_output("#{bin}/httpcat --version")
  end
end
