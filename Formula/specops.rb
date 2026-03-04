class Specops < Formula
  desc "AI Functional Analyst CLI for product and ticket workflows"
  homepage "https://github.com/francisco-donadio/specops"
  url "https://registry.npmjs.org/@francisco-donadio/specops/-/specops-0.3.1.tgz"
  sha256 "5e4ee2e53e7711fe03dbe6abd7321de26d979e48437a1a5892cdfc53c96f76cb"
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
