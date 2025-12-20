class Httpcat < Formula
  desc "CLI tool for interacting with httpcat agent - create, buy, and sell tokens with x402 payments"
  homepage "https://github.com/hathbanger/httpcat-cli"
  url "https://registry.npmjs.org/httpcat-cli/-/httpcat-cli-0.2.7.tgz"
  sha256 "2e97a6f1eaac59cd7f9f0981d49b78e075fb51d42c8876a87453fb0ff4cdda63"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.2.7")
  end
end
