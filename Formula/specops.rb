class Specops < Formula
  desc "AI Functional Analyst CLI for product and ticket workflows"
  homepage "https://github.com/francisco-donadio/specops"
  url "https://registry.npmjs.org/@francisco-donadio/specops/-/specops-0.1.1.tgz"
  sha256 "df3656959b72debb15fc5ea1d77f93d7a2f8b95e99a8d6c8ce3ee4af5b5564b7"
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
