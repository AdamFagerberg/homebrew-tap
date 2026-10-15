class Terminaltyper < Formula
  desc "Monkeytype-inspired typing test for the terminal"
  homepage "https://github.com/AdamFagerberg/terminaltyper"
  url "https://github.com/AdamFagerberg/terminaltyper/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2edaae296e246e4284dedee7130c20c77a85163d2d6d0a5d3f808ace623beec2"

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
