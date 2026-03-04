class Specops < Formula
  desc "AI Functional Analyst CLI for product and ticket workflows"
  homepage "https://github.com/francisco-donadio/specops"
  url "https://registry.npmjs.org/@francisco-donadio/specops/-/specops-0.2.0.tgz"
  sha256 "70ed4928b7df23306bb1fb7f1297dd5db782028fb53a47178f5bae707ce66a54"
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
