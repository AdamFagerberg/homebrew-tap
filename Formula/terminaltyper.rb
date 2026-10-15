class Terminaltyper < Formula
  desc "Monkeytype-inspired typing test for the terminal"
  homepage "https://github.com/AdamFagerberg/terminaltyper"
  url "https://github.com/AdamFagerberg/terminaltyper/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "eac069b5fc6422c2e6dce6cb1d49ca7f5a938a98f23d73940ddf6331b28d5bda"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: false)
    system "npm", "run", "build"
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_path_exists bin/"terminaltyper"
  end
end
