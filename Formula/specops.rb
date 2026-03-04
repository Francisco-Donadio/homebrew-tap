class Specops < Formula
  desc "AI Functional Analyst CLI for product and ticket workflows"
  homepage "https://github.com/francisco-donadio/specops"
  url "https://registry.npmjs.org/specops/-/specops-0.1.0.tgz"
  sha256 "5fdde74915faab6ed2a89449cc6ca912094cdd33501deb725c64566110aec3f2"
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
