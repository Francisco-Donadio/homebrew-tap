class Specops < Formula
  desc "AI Functional Analyst CLI for product and ticket workflows"
  homepage "https://github.com/francisco-donadio/specops"
  url "https://registry.npmjs.org/@francisco-donadio/specops/-/specops-0.3.0.tgz"
  sha256 "318d2e4e7e65d7bee5e6da6fc98bd84ee03c36f6366b211579ee1badc4acacbe"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/specops"
  end

  test do
    output = shell_output("#{bin}/specops --help")
    assert_match "Commands", output
  end
end
